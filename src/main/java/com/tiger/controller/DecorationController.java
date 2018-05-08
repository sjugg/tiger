package com.tiger.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tiger.pojo.Acmedecoration;
import com.tiger.pojo.Acmedecorationpic;
import com.tiger.pojo.Building;
import com.tiger.pojo.Strategy;
import com.tiger.pojo.Strategykinds;
import com.tiger.service.AcmedecorationService;
import com.tiger.service.BuildingService;
import com.tiger.service.StrategyService;
import com.tiger.service.StrategykindsService;


@Controller
@RequestMapping("/decoration")
public class DecorationController {
	
	@Resource
	private StrategyService strategyService;
	@Resource
	private StrategykindsService strategykindsService;
	@Resource
	private AcmedecorationService acmedecorationService;
	@RequestMapping("/decorationService")
	public String toLogin(){
		return "user/decoration/decorationService";
	}
	
	@RequestMapping("/decorationSupport")
	public String toDecorationSupport(){
		return "user/decoration/decorationSupport";
	}
	
	@RequestMapping("/strategy")
	public String toStrategy(HttpServletRequest request,Model model){
		String kindsId = request.getParameter("id");
		List<Strategy> strategyList;
		if(kindsId == null){
			 strategyList = strategyService.getAllStrategy();
			 model.addAttribute("strategykindsUrlId","");
		}else{
			 int id = Integer.parseInt(kindsId);
			 strategyList = strategyService.getStrategyByKindsId(id);
			 model.addAttribute("strategykindsUrlId", kindsId);
		}
		List<Strategykinds> strategykindsList = this.strategykindsService.getAllStrategykinds();
		model.addAttribute("strategyList", strategyList);
		model.addAttribute("strategykindsList", strategykindsList);
		
		return "/user/decoration/strategy";
	}
	@RequestMapping("/strategyDetail")
	public String toStrategyDetail(HttpServletRequest request,Model model){
		String kindsId = request.getParameter("id");
		
		Strategy strategyList = strategyService.getStrategyById(Integer.parseInt(kindsId));
		List<Strategykinds> strategykindsList = this.strategykindsService.getAllStrategykinds();
		model.addAttribute("strategykindsList", strategykindsList);
		model.addAttribute("strategyList", strategyList);
		return "/user/decoration/strategyDetail";
	}
	
	@RequestMapping("/acmedecorationDetail")
	public String toShowAllAcmedecorationDetail(HttpServletRequest request,Model model){
		int acmedecorationId = Integer.parseInt(request.getParameter("id"));
		List<Acmedecoration> acmedecorationList = acmedecorationService.getAcmedecorationDetailById(acmedecorationId);
		List<Acmedecorationpic> acmedecorationpicList;
		for (Acmedecoration acmedecoration : acmedecorationList) {  
			acmedecorationpicList = acmedecoration.getAcmedecorationpic();  
            model.addAttribute("acmedecorationpicList", acmedecorationpicList);
        }  
		model.addAttribute("acmedecorationList", acmedecorationList);
		return "user/decoration/acmeDecorationDetail";
	}
	
	@RequestMapping("/allAcmedecorationJson")
	@ResponseBody
	public Map<String,Object> toAllAcmedecorationJson(HttpServletRequest request,Model model){
		List<Acmedecoration> acmedecorationList = this.acmedecorationService.getAllAcmedecoration();
		Map<String, Object> results = new HashMap<String,Object>();
        results.put("acmedecorationList", acmedecorationList);
		return results;
	}
}
