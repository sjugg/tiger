package com.tiger.controller;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tiger.pojo.Building;
import com.tiger.pojo.HomeDress;
import com.tiger.pojo.Strategy;
import com.tiger.service.BuildingService;
import com.tiger.service.HomeDressService;
import com.tiger.service.StrategyService;
import com.tiger.service.impl.HomeDressServiceImpl;


@Controller
@RequestMapping("/homeDressScene")
public class HomeDressSceneController {
	@Autowired
	private HomeDressServiceImpl homeDressServiceImpl;
	@RequestMapping("/homeDressScene")
	public String toHomeDressScene(){
		return "/user/homeDressScene/homeDressScene";
	}
	
	@RequestMapping("/homeDressSceneDetail")
	public String toHomeDressSceneDetail(){
		return "/user/homeDressScene/homeDressSceneDetail";
	}
	@RequestMapping("/order")
	public void homeDressOrder(String tel,@RequestParam(value="name") String names,HttpServletResponse response){
		try {
			HomeDress homeDress = homeDressServiceImpl.getbyTel(tel);
			if (homeDress == null) {
				homeDress = new HomeDress();
				homeDress.setTel(tel);
				homeDress.setName(names);
				homeDressServiceImpl.addAdmin(homeDress);
				//预约成功
				response.getWriter().print(1);
			} else {
				//该号码已经预约过
				response.getWriter().print(0);
			}
		} catch (Exception e) {
			//异常情况下，预约失败
			try {
				response.getWriter().print(2);
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			e.printStackTrace();
		}
	}
}
