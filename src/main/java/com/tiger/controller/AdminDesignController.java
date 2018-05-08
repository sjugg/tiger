package com.tiger.controller;

import java.util.Date;
import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tiger.pojo.Building;
import com.tiger.pojo.Buildingbespeak;
import com.tiger.pojo.Design;
import com.tiger.pojo.Designbespeak;
import com.tiger.pojo.Designoffer;
import com.tiger.service.BuildingService;
import com.tiger.service.BuildingbespeakService;
import com.tiger.service.DesignService;
import com.tiger.service.DesignbespeakService;
import com.tiger.service.DesignofferService;

@Controller
@RequestMapping("admin/design")
public class AdminDesignController {
	@Resource
	private DesignService designService;
	@Resource
	private DesignbespeakService designbespeakService;
	@Resource
	private DesignofferService designofferService;
	
	
	//显示所有设计
	@RequestMapping("/showAllDesign")
	public String toShowAllDesign(HttpServletRequest request,Model model){
		List<Design> designList = this.designService.getAllDesign();
		model.addAttribute("designList", designList);
		return "admin/design/showAllDesign";
	}
	
	//去添加设计
	@RequestMapping("/toAddDesign")
	public String toAddDesign(){
		return "admin/design/addDesign";
	}
	//添加设计
	@RequestMapping("/addDesign")
	public String toDoAddDesign(Design design,HttpServletRequest request,Model model){
		this.designService.addDesign(design);
		List<Design> designList = this.designService.getAllDesign();
		model.addAttribute("designList", designList);
		return "admin/design/showAllDesign";
	}
	
	
	@RequestMapping("/showAllDesignoffer")
	public String toShowAllDesignoffer(HttpServletRequest request,Model model){
		List<Designoffer> designofferList = this.designofferService.getAllDesignoffer();
		model.addAttribute("designofferList", designofferList);
		return "admin/design/showAllDesignoffer";
	}
	
	//预约设计
	@RequestMapping("/showAllDesignbespeak")
	public String toShowAllDesignbespeak(HttpServletRequest request,Model model){
		List<Designbespeak> designbespeakList = this.designbespeakService.getAllDesignbespeak();
		model.addAttribute("designbespeakList", designbespeakList);
		return "admin/design/showAllDesignbespeak";
	}
}
