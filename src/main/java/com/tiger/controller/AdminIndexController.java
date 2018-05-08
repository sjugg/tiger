package com.tiger.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("admin")
public class AdminIndexController {

	
	//管理员页面管理
	@RequestMapping("/index")
	public String toAdminIndex(){
		return "admin/index";
	}
	 
	@RequestMapping("/top")
	public String toAdminTop(){
		return "admin/top";
	}
	
	@RequestMapping("/menu")
	public String toAdminMenu(){
		return "admin/menu";
	}
	
	@RequestMapping("/sysPro")
	public String toAdminSysPro(){
		return "admin/index/sysPro";
	}
	
	
}
