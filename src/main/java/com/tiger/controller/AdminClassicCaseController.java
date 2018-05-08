package com.tiger.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tiger.pojo.Acmedecoration;
import com.tiger.pojo.Casepicture;
import com.tiger.pojo.Classiccase;
import com.tiger.pojo.Houseacreage;
import com.tiger.pojo.Housestyle;
import com.tiger.pojo.Housetype;
import com.tiger.service.CasepictureService;
import com.tiger.service.ClassiccaseService;
import com.tiger.service.HouseacreageService;
import com.tiger.service.HousestyleService;
import com.tiger.service.HousetypeService;

@Controller
@RequestMapping("admin/classicCase")
public class AdminClassicCaseController {
	@Resource
	private ClassiccaseService classiccaseService;
	
	@Resource
	private CasepictureService casepictureService;
	@Resource
	private HouseacreageService houseacreageService;
	@Resource
	private HousetypeService housetypeService;
	@Resource
	private HousestyleService housestyleService;
	
	//去添加经典案例
	@RequestMapping("/toAddClassicCase")
	public String tpAddClassiccase(HttpServletRequest request,Model model){
		List<Housetype> housetypeList = this.housetypeService.getAllHousetype();
		model.addAttribute("housetypeList", housetypeList);
		List<Houseacreage> houseacreageList = this.houseacreageService.getAllHouseacreage();
		model.addAttribute("houseacreageList", houseacreageList);
		List<Housestyle> housestyleList = this.housestyleService.getAllHousestyle();
		model.addAttribute("housestyleList", housestyleList);
		return "/admin/classicCase/addClassicCase";
	}
	//添加经典案例
	@RequestMapping("/addClassicCase")
	public String addClassiccase(Classiccase classiccase,Casepicture casepicture,HttpServletRequest request,Model model){
		this.classiccaseService.addClassiccase(classiccase);
		int classiccaseId = classiccase.getClassiccaseId();
		String[] casepicturePicList = casepicture.getCasepicturePicture().split(",");
		String[] casepictureInfoList = casepicture.getCasepictureInfo().split(",");
		for(int i=0;i<casepicturePicList.length;i++){
			if(casepicturePicList[i]!="" || casepictureInfoList[i]!=""){
				casepicture.setCasepicturePicture(casepicturePicList[i]);
				casepicture.setCasepictureInfo(casepictureInfoList[i]);
				casepicture.setClassiccaseId(classiccaseId);
			}
			this.casepictureService.addCasepicture(casepicture);
		}
		List<Classiccase> classiccaseList = this.classiccaseService.getAllClassiccase();
		model.addAttribute("classicCaseList", classiccaseList);
		System.out.println(classiccaseList);
		return "redirect:/admin/classicCase/showAllClassicCase";
	}
	//删除经典案例
	@RequestMapping("/delClassicCase")
	public String todelClassiccase(HttpServletRequest request,Model model){
		int classiccaseId = Integer.parseInt(request.getParameter("id"));
		this.classiccaseService.delClassiccaseById(classiccaseId);
		this.casepictureService.delCasepuictureByClassiccaseId(classiccaseId);
		return "/admin/classicCase/showAllClassicCase";
	}
	
	@RequestMapping("/showClassicCaseById")
	public String toShowAllClassicCase(HttpServletRequest request,Model model){
		int classiccaseId = Integer.parseInt(request.getParameter("id"));
		List<Classiccase> classiccaseList = this.classiccaseService.selectClassiccaseById(classiccaseId);
		List<Casepicture> casepictureList;
		for (Classiccase classiccase : classiccaseList) {  
			casepictureList = classiccase.getCasepicture();  
            model.addAttribute("casepictureList", casepictureList);
        }  
		model.addAttribute("classiccaseList", classiccaseList);
		return "/admin/classicCase/classicCaseDetail";
	}
	
	@RequestMapping("/showAllClassicCase")
	public String toClassicCase(HttpServletRequest request,Model model){
		List<Classiccase> classiccaseList = this.classiccaseService.getAllClassiccase();
		model.addAttribute("classicCaseList", classiccaseList);
		System.out.println(classiccaseList);
		return "/admin/classicCase/showAllClassicCase";
	}
	
	
}
