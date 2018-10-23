package com.tiger.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tiger.pojo.Building;
import com.tiger.pojo.Buildingbespeak;
import com.tiger.service.BuildingService;
import com.tiger.service.BuildingbespeakService;

@Controller
@RequestMapping("admin/building")
public class AdminBuildingController {
	@Resource
	private BuildingService buildingService;
	@Resource
	private BuildingbespeakService buildingbespeakService;
	
	//楼盘管理
	@RequestMapping("/buildingDealWith")
	public String toDealWith(HttpServletRequest request,Model model){
		String buildingbespeakId = request.getParameter("id"); 
		this.buildingbespeakService.updateBuildingbespeakStateById(Integer.parseInt(buildingbespeakId));
		List<Buildingbespeak> buildingbespeakList = this.buildingbespeakService.getAllBuildingbespeak();
		List<Building> buildingList = this.buildingService.getAllBuilding();
		model.addAttribute("buildingList", buildingList);
		model.addAttribute("buildingbespeakList", buildingbespeakList);
		return "admin/building/showAllBuildingbespeak";
	}
	
	@RequestMapping("/showAllBuilding")
	public String toShowAllBuilding(HttpServletRequest request,Model model){
		List<Building> buildingList = this.buildingService.getAllBuilding();
		model.addAttribute("buildingList", buildingList);
		return "admin/building/showAllBuilding";
	}
	@RequestMapping("/toAddBuilding")
	public String toAddBuilding(){
		return "admin/building/addBuilding";
	}
	@RequestMapping("/addBuilding")
	public String toAddBuilding(HttpServletRequest request,Building building,Model model){
		this.buildingService.addBuilding(building);
		List<Building> buildingList = this.buildingService.getAllBuilding();
		System.out.println(buildingList);
		model.addAttribute("buildingList", buildingList);
		
		return "admin/building/showAllBuilding";
	}
	@RequestMapping("/showAllBuildingbespeak")
	public String toShowAllBuildingbespeak(HttpServletRequest request,Model model){
		List<Buildingbespeak> buildingbespeakList = this.buildingbespeakService.getAllBuildingbespeak();
		List<Building> buildingList = this.buildingService.getAllBuilding();
		model.addAttribute("buildingList", buildingList);
		model.addAttribute("buildingbespeakList", buildingbespeakList);
		return "admin/building/showAllBuildingbespeak";
	}
	
	@RequestMapping("/delBuilding")
	public String delBuilding(HttpServletRequest request,Model model){
		int buildingId = Integer.parseInt(request.getParameter("id"));
		System.out.println(buildingId);
		buildingService.delBuildingById(buildingId);
		return "admin/building/showAllBuilding";
	}
}
