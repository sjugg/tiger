package com.tiger.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tiger.pojo.Strategy;
import com.tiger.pojo.Strategykinds;
import com.tiger.service.StrategyService;
import com.tiger.service.StrategykindsService;


@Controller
@RequestMapping("admin/strategy")
public class AdminStrategyController {
	@Resource
	private StrategyService strategyService;
	
	@Resource
	private StrategykindsService strategykindsService;
	
	
	//去更新装修攻略
	@RequestMapping("/toUpdateStrategy")
	public String toUpload(HttpServletRequest request,Model model){
		String kindsId = request.getParameter("id");
		List<Strategykinds> strategykindsList = this.strategykindsService.getAllStrategykinds();
		model.addAttribute("strategykindsList", strategykindsList);
		Strategy strategyList = this.strategyService.getStrategyById(Integer.parseInt(kindsId));
		System.out.print(strategyList);
		model.addAttribute("strategyList", strategyList);
		return "/admin/strategy/updateStrategy";
	}
	//更新装修攻略
	@RequestMapping("/updateStrategy")
	public void toUpdateStrategyDetail(Strategy strategy,HttpServletRequest request,Model model){
		
		this.strategyService.updateStrategy(strategy);
	}
	//删除装修攻略
	@RequestMapping("/strategyDetail")
	public String toStrategyDetail(HttpServletRequest request,Model model){
		String kindsId = request.getParameter("id");
		
		Strategy strategyList = this.strategyService.getStrategyById(Integer.parseInt(kindsId));
		model.addAttribute("strategyList", strategyList);
		return "/admin/strategy/strategyDetail";
	}
	
	@RequestMapping("/toAddStrategy")
	public String showToAddStrategy(HttpServletRequest request,Model model){
		List<Strategykinds> strategykindsList = this.strategykindsService.getAllStrategykinds();
		model.addAttribute("strategykindsList", strategykindsList);
		return "/admin/strategy/addStrategy";
	}
	@RequestMapping("/addStrategy")
	public String toAddStrategy(HttpServletRequest request,Strategy strategy,Model model){
		this.strategyService.addStrategy(strategy);
		return "redirect:/admin/strategy/showAllStrategy";
	}
	
	@RequestMapping("/delStrategy")
	public String todelClassiccase(HttpServletRequest request,Model model){
		return "/admin/strategy/showAllStrategy";
	}
	
	@RequestMapping("/showStrategyByKindsId")
	public String toShowStrategyByStrategykindsid(HttpServletRequest request,Model model){
		int kindsId = Integer.parseInt(request.getParameter("id"));
		List<Strategy> strategyList = this.strategyService.getStrategyByKindsId(kindsId);
		List<Strategykinds> strategykindsList = this.strategykindsService.getAllStrategykinds();
		model.addAttribute("strategykindsList", strategykindsList);
		model.addAttribute("strategyList", strategyList);
		return "/admin/strategy/showAllStrategy";
	}
	
	@RequestMapping("/showStrategyById")
	public String toShowAllStrategyById(HttpServletRequest request,Model model){
		return "/admin/strategy/StrategyDetail";
	}
	
	@RequestMapping("/showAllStrategy")
	public String toShowAllStrategy(HttpServletRequest request,Model model){
		List<Strategykinds> strategykindsList = this.strategykindsService.getAllStrategykinds(); 
		List<Strategy> strategyList = this.strategyService.getAllStrategy();
		model.addAttribute("strategykindsList", strategykindsList);
		model.addAttribute("strategyList", strategyList);
		return "/admin/strategy/showAllStrategy";
	}
	
	
}
