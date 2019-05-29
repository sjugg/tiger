package com.tiger.service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.tiger.dao.UserInfoDao;
import com.tiger.pojo.UserInfo;




public class MyUserDetailService implements UserDetailsService{

	@Autowired
	private UserInfoDao userInfoDao;
	
	@Override
	public UserDetails loadUserByUsername(String username)throws UsernameNotFoundException {
		User userDetails=null;
		System.out.println(username);
		if(StringUtils.isNotEmpty(username)){
			String[] arr=username.split("~");
			if(arr.length>1){
				String loginName=arr[0];
				String loginPwd=arr[1];
				UserInfo userInfo=new UserInfo();
				userInfo.setTel(loginName);
				userInfo=userInfoDao.getByTel(userInfo);
				if(userInfo!=null){
					if(!userInfo.getPassword().equals(loginPwd)){
						throw new BadCredentialsException(loginName+" wrong password");
					}
					Collection<GrantedAuthority> authorities=getAuthorities(loginName);
					userDetails=new User(loginName, userInfo.getPassword(), authorities);
				}else{
					System.out.println("获取人员信息失败！！");
					throw new UsernameNotFoundException(loginName+" 用户名不存在！");
				}
			}else{
				throw new BadCredentialsException("Login Params Lack");
			}
		}
		return userDetails;
	}
	private Collection<GrantedAuthority> getAuthorities(String username){
		List<GrantedAuthority> authList = new ArrayList<GrantedAuthority>();
		if("15250502951".equals(username)){
			authList.add(new SimpleGrantedAuthority("ROLE_USER"));      
			authList.add(new SimpleGrantedAuthority("ROLE_ADMIN"));  
		}else{
			authList.add(new SimpleGrantedAuthority("ROLE_USER"));
		}
		return authList; 
	}
	
}
