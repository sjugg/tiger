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
@RequestMapping("/supplier")
public class SupplierController {
	@RequestMapping("/supplierUpMaterial")
	public String toSupplierUpMaterial(){
		return "/user/supplier/supplierUpMaterial";
	}
	
	@RequestMapping("/supplierInfo")
	public String toSupplierInfo(){
		return "/user/supplier/supplierInfo";
	}
	@RequestMapping("/supplierHomepage")
	public String toSupplierHomepage(){
		return "/user/supplier/supplierHomePage";
	}
}
