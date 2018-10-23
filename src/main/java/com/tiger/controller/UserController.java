package com.tiger.controller;

import java.io.IOException;
import java.io.Serializable;
import java.util.Collections;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPoolConfig;

import com.tiger.pojo.Building;
import com.tiger.pojo.NoteInfo;
import com.tiger.pojo.Strategy;
import com.tiger.pojo.UserInfo;
import com.tiger.service.BuildingService;
import com.tiger.service.StrategyService;
import com.tiger.service.UserInfoService;
import com.tiger.service.impl.UserInfoServiceImpl;
import com.tiger.utils.EmailSender;
import com.tiger.utils.RedisCacheConfig;
import com.tiger.utils.SpyMemcachedManager;


@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private UserInfoServiceImpl userInfoService;
	@Resource
	private RedisTemplate<Serializable, Serializable> redisTemplate;
	@Resource
	private JedisPoolConfig jedisConfig;
	@Resource
	private JavaMailSenderImpl javaMailSender;
	
	/*public RedisTemplate<Serializable, Serializable> getRedisTemplate() {
		return redisTemplate;
	}
	public void setRedisTemplate(
			RedisTemplate<Serializable, Serializable> redisTemplate) {
		this.redisTemplate = redisTemplate;
	}*/
	@RequestMapping("/userInfo")
	public String toLogin(){
		return "/user/user/userInfo";
	}
	@RequestMapping("/userHomePage")
	public String toUserHomepage(){
		return "/user/user/userHomePage";
	}
	@RequestMapping("/userNote")
	public String userNote(HttpServletRequest request){
		System.out.println("userNote");
		SpyMemcachedManager spyMemcachedManager=SpyMemcachedManager.getInstance();
		NoteInfo noteInfo=(NoteInfo) spyMemcachedManager.get("noteInfo");
		if(noteInfo!=null){
			request.getSession().setAttribute("noteInfo", noteInfo);
		}
		return "/user/user/userNote";
	}
	@Value("#{configProperties['memcached.expiretime']}")
	private String expireTime;
	@RequestMapping("/login")
	public void login(String tel,String password,Model model,HttpServletResponse response,HttpServletRequest request) throws IOException{
		SpyMemcachedManager spyMemcachedManager=SpyMemcachedManager.getInstance();
//		UserInfo memory=(UserInfo) spyMemcachedManager.get(tel);
		UserInfo memory=null;
		Object obj=redisTemplate.opsForValue().get(tel);
		if(obj!=null){
		 memory=(UserInfo) obj;
		}
		System.out.println(javaMailSender.getHost());
		System.out.println(javaMailSender.getUsername());
		UserInfo userInfo;
		if(memory==null){
			System.out.println("缓存中没有找到客户信息");
			userInfo=new UserInfo();
			userInfo.setPassword(password);
			userInfo.setTel(tel);
			userInfo=userInfoService.getByPdAndTel(userInfo);
			if(userInfo!=null){
				redisTemplate.opsForValue().set(tel, userInfo);
				//设置缓存时间为10分钟
				SpyMemcachedManager.set(tel, Integer.parseInt(expireTime), userInfo);
			}
		}else{
			System.out.println("缓存中有客户信息");
			userInfo=memory;
		}
		if(userInfo!=null){
			model.addAttribute("userInfo", userInfo);
			HttpSession session=request.getSession();
			session.putValue("userInfo", userInfo);
			response.getWriter().print("1");
		}else{
			response.getWriter().print("0");
		}
	}
	@RequestMapping("/register")
	public void register(String tel,String password,String code,String name,HttpServletRequest request,HttpServletResponse response) throws IOException{
		Object checkCode=request.getSession().getAttribute(request.getSession().getId());
		if(checkCode!=null){
			//忽略验证码大小写
			String rawCode=checkCode.toString().toLowerCase();
			if(rawCode.equals(code.toLowerCase())){
				UserInfo regUser=new UserInfo();
				regUser.setPassword(password);
				regUser.setTel(tel);
				regUser.setName(name);
				UserInfo userInfo=userInfoService.getByTel(regUser);
				if(userInfo==null){
					//注册成功
					userInfoService.addAdmin(regUser);
					response.getWriter().print(1);
				}else{
					//该手机号已被注册
					response.getWriter().print(3);
				}	
			}else{
				//验证码错误
				response.getWriter().print(0);
			}
		}else{
			//验证码验证失败
			response.getWriter().print(2);
		}
		
	}
	@RequestMapping("/logout")
	public String logout(String tel,HttpServletRequest request) throws IOException{
		//从缓存中清楚出去
		System.out.println(tel);
		SpyMemcachedManager.deleteCache(tel);
		HttpSession session=request.getSession();
		session.putValue("userInfo", null);
		return "/index";
	}
}
