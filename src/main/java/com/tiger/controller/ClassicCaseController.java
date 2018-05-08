package com.tiger.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.tiger.pojo.Acmedecoration;
import com.tiger.pojo.Building;
import com.tiger.pojo.Casepicture;
import com.tiger.pojo.Classiccase;
import com.tiger.pojo.Houseacreage;
import com.tiger.pojo.Housestyle;
import com.tiger.pojo.Housetype;
import com.tiger.pojo.Strategy;
import com.tiger.service.AcmedecorationService;
import com.tiger.service.BuildingService;
import com.tiger.service.ClassiccaseService;
import com.tiger.service.HouseacreageService;
import com.tiger.service.HousestyleService;
import com.tiger.service.HousetypeService;
import com.tiger.service.StrategyService;


@Controller
@RequestMapping("/classiccase")
public class ClassicCaseController {
	@Resource
	private ClassiccaseService classiccaseService;
	@Resource
	private AcmedecorationService acmedecorationService;
	@Resource
	private HousetypeService housetypeService;
	@Resource
	private HouseacreageService houseacreageService;
	@Resource
	private HousestyleService housestyleService;
	
	@RequestMapping("/classicCase")
	public String toShowClassCase(@RequestParam(required=true,defaultValue="1") Integer page,HttpServletRequest request,Model model){
		String type = request.getParameter("housetype");
		String style = request.getParameter("housestyle");
		String acreage = request.getParameter("houseacreage");
		List<Classiccase> classiccaseList ;
		PageHelper.startPage(page, 3);
		if(type==null&& style==null && acreage==null){
			classiccaseList = classiccaseService.getAllClassiccase();
		}else {
			classiccaseList = classiccaseService.getClassiccaseByAttribute(acreage,type,style);
		}
		PageInfo<Classiccase> p=new PageInfo<Classiccase>(classiccaseList);
		model.addAttribute("page", p);
		List<Acmedecoration> acmedecorationList = acmedecorationService.getAllAcmedecoration();
		model.addAttribute("acmedecorationList", acmedecorationList);
		
		/*List<Classiccase> classiccaseIndexList = classiccaseService.getAllClassiccase();
		model.addAttribute("classiccaseIndexList", classiccaseIndexList);*/
		
		List<Housetype> housetypeList = housetypeService.getAllHousetype();
		model.addAttribute("housetypeList", housetypeList);
		
		List<Houseacreage> houseacreageList = houseacreageService.getAllHouseacreage();
		model.addAttribute("houseacreageList", houseacreageList);
		
		List<Housestyle> housestyleList = housestyleService.getAllHousestyle();
		model.addAttribute("housestyleList", housestyleList);
		model.addAttribute("classiccaseList", classiccaseList);
		model.addAttribute("classiccaseUrlType", type);
		model.addAttribute("classiccaseUrlStyle", style);
		model.addAttribute("classiccaseUrlAcreage", acreage);
		return "/user/classicCase/classicCase";
	}
	
	@RequestMapping("/classicCaseDetail")
	public String toClassicCase(HttpServletRequest request,Model model){
		int classiccaseId = Integer.parseInt(request.getParameter("id"));
		/*classiccaseService.updateClassiccaseById(classiccaseId);*/
		List<Classiccase> classiccaseList = classiccaseService.selectClassiccaseById(classiccaseId);
		List<Casepicture> casepictureList;
		for (Classiccase classiccase : classiccaseList) {  
			casepictureList = classiccase.getCasepicture();  
            model.addAttribute("casepictureList", casepictureList);
        }  
		List<Housetype> housetypeList = housetypeService.getAllHousetype();
		model.addAttribute("housetypeList", housetypeList);
		
		List<Houseacreage> houseacreageList = houseacreageService.getAllHouseacreage();
		model.addAttribute("houseacreageList", houseacreageList);
		
		List<Housestyle> housestyleList = housestyleService.getAllHousestyle();
		model.addAttribute("housestyleList", housestyleList);
		model.addAttribute("classiccaseList", classiccaseList);
		return "/user/classicCase/classicCaseDetail";
	}
}
