package com.tiger.controller;

import java.util.Date;
import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tiger.pojo.Acmedecoration;
import com.tiger.pojo.Acmedecorationpic;
import com.tiger.pojo.Casepicture;
import com.tiger.pojo.Classiccase;
import com.tiger.service.AcmedecorationService;
import com.tiger.service.AcmedecorationpicService;

@Controller
@RequestMapping("admin/acmedecoration")
public class AdminAcmedecorationController {
	@Resource
	private AcmedecorationService acmedecorationService;
	@Resource
	private AcmedecorationpicService acmedecorationpicService;
	
	//展示极致装修
	@RequestMapping("/showAllAcmedecoration")
	public String toShowAllAcmedecoration(HttpServletRequest request,Model model){
		List<Acmedecoration> acmedecorationList = this.acmedecorationService.getAllAcmedecoration();
		model.addAttribute("acmedecorationList", acmedecorationList);
		return "admin/acmedecoration/showAllAcmedecoration";
	}
	@RequestMapping("/acmedecorationDetail")
	public String toShowAllAcmedecorationDetail(HttpServletRequest request,Model model){
		int acmedecorationId = Integer.parseInt(request.getParameter("id"));
		List<Acmedecoration> acmedecorationList = this.acmedecorationService.getAcmedecorationDetailById(acmedecorationId);
		List<Acmedecorationpic> acmedecorationpicList;
		for (Acmedecoration acmedecoration : acmedecorationList) {  
			acmedecorationpicList = acmedecoration.getAcmedecorationpic();  
            model.addAttribute("acmedecorationpicList", acmedecorationpicList);
        }  
		model.addAttribute("acmedecorationList", acmedecorationList);
		return "admin/acmedecoration/acmedecorationDetail";
	}
	@RequestMapping("/toAddAcmedecoration")
	public String toAddAcmedecoration(HttpServletRequest request,Model model){
		
		return "admin/acmedecoration/addAcmedecoration";
	}
	@RequestMapping("/addAcmedecoration")
	public String AddAcmedecoration(Acmedecoration acmedecoration,Acmedecorationpic acmedecorationpic,HttpServletRequest request,Model model){
		this.acmedecorationService.addAcmedecoration(acmedecoration);
		int acmedecorationId = acmedecoration.getAcmedecorationId();
		String[] AcmedecorationpicPicList = acmedecorationpic.getAcmedecorationpicPic().split(",");
		String[] AcmedecorationpicInfoList = acmedecorationpic.getAcmedecorationpicInfo().split(",");
		String[] AcmedecorationpicNameList = acmedecorationpic.getAcmedecorationpicName().split(",");
		for(int i=0;i<AcmedecorationpicPicList.length;i++){
			if(AcmedecorationpicInfoList[i]!="" || AcmedecorationpicInfoList[i]!="" || AcmedecorationpicNameList[i]!="" || AcmedecorationpicNameList[i]!=""){
				acmedecorationpic.setAcmedecorationpicPic(AcmedecorationpicPicList[i]);
				acmedecorationpic.setAcmedecorationpicInfo(AcmedecorationpicInfoList[i]);
				acmedecorationpic.setAcmedecorationpicName(AcmedecorationpicNameList[i]);
				acmedecorationpic.setAcmedecorationpicRid(acmedecorationId);
			}
			this.acmedecorationpicService.addAcmedecorationpic(acmedecorationpic);
		}
		List<Acmedecoration> acmedecorationList = this.acmedecorationService.getAllAcmedecoration();
		model.addAttribute("acmedecorationList", acmedecorationList);
		return "admin/acmedecoration/showAllAcmedecoration";
	}
	
}
