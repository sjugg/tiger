package com.tiger.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tiger.pojo.Building;
import com.tiger.pojo.Strategy;
import com.tiger.service.BuildingService;
import com.tiger.service.StrategyService;


@Controller
@RequestMapping("/smartHome")
public class SmartHomeController {
	@RequestMapping("/smartHome")
	
	//智能家装
	public String toLogin(){
		return "/user/smartHome/smartHome";
	}
}
