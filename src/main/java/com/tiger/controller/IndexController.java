package com.tiger.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tiger.pojo.Acmedecoration;
import com.tiger.pojo.Building;
import com.tiger.pojo.Buildingbespeak;
import com.tiger.pojo.Classiccase;
import com.tiger.pojo.Design;
import com.tiger.pojo.Designbespeak;
import com.tiger.pojo.Designoffer;
import com.tiger.pojo.NoteInfo;
import com.tiger.pojo.Quoedprice;
import com.tiger.pojo.Strategy;
import com.tiger.pojo.UserInfo;
import com.tiger.service.AcmedecorationService;
import com.tiger.service.BuildingService;
import com.tiger.service.BuildingbespeakService;
import com.tiger.service.ClassiccaseService;
import com.tiger.service.DesignService;
import com.tiger.service.DesignbespeakService;
import com.tiger.service.DesignofferService;
import com.tiger.service.QuoedpriceService;
import com.tiger.service.StrategyService;
import com.tiger.service.UserInfoService;
import com.tiger.utils.CaptchaUtil;
import com.tiger.utils.SpyMemcachedManager;


@Controller
@RequestMapping("/")
public class IndexController {
	@Resource
	private BuildingService buildingService;
	@Resource
	private StrategyService strategyService;
	@Resource
	private DesignService designService;
	@Resource 
	private DesignofferService designofferService;
	@Resource 
	private DesignbespeakService designbespeakService;
	@Resource
	private ClassiccaseService classiccaseService;
	@Resource
	private BuildingbespeakService buildingbespeakService;
	@Resource
	private QuoedpriceService quoedpriceService;
	@Resource
	private AcmedecorationService acmedecorationService;
	@Autowired
	private UserInfoService userInfoService;
	@Value("#{configProperties['memcached.expiretime']}")
	private Integer expireTime;
	
	/**
	 * 转存当前登录城市信息
	 * @param request
	 * @return
	 */
	@RequestMapping("/toIndex")
	public String toIndex(HttpServletRequest request){
		try {
			String city = new String(request.getParameter("city").getBytes("ISO8859-1"),"UTF-8");
			String province = new String(request.getParameter("province").getBytes("ISO8859-1"),"UTF-8");
			if(StringUtils.isNotEmpty(city)){
				request.getSession().putValue("city", city);
			}
			if(StringUtils.isNotEmpty(province)){
				request.getSession().putValue("province", province);
			}
			System.out.println("当前城市："+city);
			SpyMemcachedManager spyMemcachedManager=SpyMemcachedManager.getInstance();
			NoteInfo noteInfo=(NoteInfo) spyMemcachedManager.get("noteInfo");
			if(noteInfo!=null){
				request.getSession().putValue("haveNote", true);
			}
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "/index";
	}
	@RequestMapping("/checkCode")
	public void checkCode(HttpServletRequest request,HttpServletResponse response){
		//通知浏览器不缓存
		response.setHeader("Expires", "-1");
		response.setHeader("Cache-Control","no-cache");
		response.setHeader("Pragma", "-1");
		CaptchaUtil util=CaptchaUtil.Instance();
		String code=util.getString();
		request.getSession().setAttribute(request.getSession().getId(),code);
		try {
			ImageIO.write(util.getImage(), "jpg", response.getOutputStream());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	@RequestMapping("/index")
	public String index(HttpServletRequest request,Model model){
		List<Strategy> strategyList = this.strategyService.getAllStrategy();
		model.addAttribute("strategyList", strategyList);
		SpyMemcachedManager spyMemcachedManager=SpyMemcachedManager.getInstance();
		List<Building> buildingList =(List<Building>) spyMemcachedManager.get("buildingList");
		if(buildingList==null){
			buildingList = this.buildingService.getAllBuilding();
			System.out.println("往cache中放 buildingList");
			SpyMemcachedManager.set("buildingList", expireTime, buildingList);
		}
		model.addAttribute("buildingList", buildingList);
		int quoedpriceSize = this.quoedpriceService.getAllQuoedprice().size(); 
		model.addAttribute("quoedpriceSize", quoedpriceSize);
		List<Classiccase> Classiccase =(List<Classiccase>) spyMemcachedManager.get("classiccaseList");
		if(Classiccase==null){
			Classiccase = this.classiccaseService.getAllClassiccaseIndex();
			System.out.println("往cache中放 buildingList");
			SpyMemcachedManager.set("classiccaseList", expireTime, Classiccase);
		}
		model.addAttribute("classiccaseList", Classiccase);
		return "/user/index";
	}
	@RequestMapping("/header")
	public String showHeader(){
		return "/header";
	}
	@RequestMapping("/footer")
	public String showFooter(){
		return "/footer";
	}
	@RequestMapping("/register")
	public String toUserRegister(){
		return "/user/register";
	}
	@RequestMapping("/login")
	public String toLogin(){
		return "/user/login";
	}
	//design 免费设计
	@RequestMapping("/design")
	public String toDesign(HttpServletRequest request,Model model){
		SpyMemcachedManager spyMemcachedManager=SpyMemcachedManager.getInstance();
		List<Design> designList=(List<Design>)spyMemcachedManager.get("designList");
		if(designList==null){
			designList = this.designService.getAllDesign();
			spyMemcachedManager.set("designList", expireTime, designList);
		}
		int designLen = this.designofferService.getAllDesignoffer().size();
		int designbespeakLen = this.designbespeakService.getAllDesignbespeak().size();
		model.addAttribute("designList", designList);
		model.addAttribute("designLen", designLen);
		model.addAttribute("designbespeakLen", designbespeakLen);
		return "/user/design/design";
	}
	@RequestMapping("/designbespeak")
	public String toDesignbespeak(Designbespeak designbespeak,HttpServletRequest request,Model model){
		this.designbespeakService.addDesignbespeak(designbespeak);
		return "redirect:/design";
	}
	@RequestMapping("/designoffer")
	public String toDesignoffer(Designoffer designoffer,HttpServletRequest request,Model model){
		this.designofferService.addDesignoffer(designoffer);
		String designStylesId = request.getParameter("designStylesId");
		String desginofferAcreage = request.getParameter("designofferAcreage");
		int designofferCost = Integer.parseInt(desginofferAcreage)*Integer.parseInt(designStylesId);
		Design design = this.designService.getDesignById(Integer.parseInt(designStylesId));
		int allDesign = this.designofferService.getAllDesignoffer().size();
		model.addAttribute("designPic", design.getDesignPic());
		model.addAttribute("designInfo", design.getDesignInfo());
		model.addAttribute("desginofferAcreage", desginofferAcreage);
		model.addAttribute("designofferCost", designofferCost);
		model.addAttribute("allDesign", allDesign);
		return "user/design/designShow";
	}
	@RequestMapping("/designShow")
	public String toDesignShow(){
		return "/user/design/designShow";
	}
	//renovation 装修
 	@RequestMapping("/renovation")
	public String toRenovation(){
		return "/user/other/renovation";
	}
 	
 	//building 楼盘
	@RequestMapping("/buildingBespeakShow")
	public String toBuildingBespeakShow(){
		return "/user/other/buildingBespeakShow";
	}
	@RequestMapping("/BuildingBespeak")
	public void toBuildingBespeakShow(HttpServletRequest request,Buildingbespeak buildingbespeak, Model model){
		this.buildingbespeakService.addBuildingbespeak(buildingbespeak);
		System.out.println(buildingbespeak.getBuildingbespeakBuildingid());
		this.buildingService.updateBuildingTotaluserById(buildingbespeak.getBuildingbespeakBuildingid());
	}
	
	//quotationShow 装修报价
	@RequestMapping("/quotationShow")
	public String toQuotationShow(){
		return "/user/other/quotationShow";
	}
	@RequestMapping("/toQuotationShow")
	@ResponseBody
	public Map<String,Object> quotationShow(Quoedprice quoedprice,HttpServletRequest request,Model model){
		this.quoedpriceService.addQuoedprice(quoedprice);
		String houseAcreage= request.getParameter("quotedpriceHouseAcreage");
		int personPrice = 199;
		int designPrice = 9000;
		int qualityInspectionPrice = 3500;
		int bedroomPrice = 2560;
		int parlourPrice = 1568;
		int kitchenPrice = 2108;
		int toiletPrice = 1680;
		String bedroom= request.getParameter("quotedpriceBedroom").substring(0,1);
		int quotedpriceBedroom=0;
		switch(bedroom){
			case "一":quotedpriceBedroom = 1;break;
			case "二":quotedpriceBedroom = 2;break;
			case "三":quotedpriceBedroom = 3;break;
			case "四":quotedpriceBedroom = 4;break;
			default:break;
		}
		String parlour= request.getParameter("quotedpriceParlour").substring(0,1);
		int quotedpriceParlour=0;
		switch(parlour){
			case "一":quotedpriceParlour = 1;break;
			case "二":quotedpriceParlour = 2;break;
			default:break;
		}
		String kitchen= request.getParameter("quotedpriceKitchen").substring(0,1);
		int quotedpriceKitchen=0;
		switch(kitchen){
			case "一":quotedpriceKitchen = 1;break;
			case "二":quotedpriceKitchen = 2;break;
			default:break;
		}
		String toilet= request.getParameter("quotedpriceToilet").substring(0,1);
		int quotedpriceToilet=0;
		switch(toilet){
			case "一":quotedpriceToilet = 1;break;
			case "二":quotedpriceToilet = 2;break;
			default:break;
		}
		quotedpriceBedroom *= bedroomPrice;
		quotedpriceParlour *= parlourPrice;
		quotedpriceKitchen *= kitchenPrice;
		quotedpriceToilet *= toiletPrice;
		int materialCost = quotedpriceBedroom+quotedpriceParlour+quotedpriceKitchen+quotedpriceToilet;
		int personCost = personPrice*Integer.parseInt(houseAcreage);
		int designCost = designPrice;
		int qualityInspectionCost = qualityInspectionPrice;
		int totalCost = materialCost+personCost+designCost+qualityInspectionCost;
		Map<String, Object> results = new HashMap<String,Object>();
			
        results.put("materialCost", materialCost);
        results.put("personCost", personCost);
        results.put("designCost",designCost );
        results.put("qualityInspectionCost",qualityInspectionCost );
        results.put("totalCost",totalCost );
		return results;
	}
 	
	//用户反馈
	@RequestMapping("/userFeedBack")
	public String toUserfeedBack(){
		return "/user/other/userFeedBack";
	}
	
	//商家入驻
	@RequestMapping("/joinUs")
	public String tojoinUs(){
		return "/user/other/joinUs";
	}

	// 商家入住登记
	@RequestMapping("/joinReg")
	public void register(String tel, String password, String company, String name,
			HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		UserInfo regUser = new UserInfo();
		regUser.setPassword(password);
		regUser.setTel(tel);
		regUser.setName(name);
		regUser.setPassword(tel);
		regUser.setCompany(company);
		UserInfo userInfo = userInfoService.getByTel(regUser);
		if (userInfo == null) {
			// 注册成功
			userInfoService.addAdmin(regUser);
			response.getWriter().print(1);
		} else {
			// 该手机号已被注册
			response.getWriter().print(3);
		}
	}

	//极致装修
		@RequestMapping("/acmedecorationJson")
		@ResponseBody
		public Map<String,Object> toAcmedecorationJson(HttpServletRequest request,Model model){
			List<Acmedecoration> acmedecorationList = this.acmedecorationService.getAllAcmedecoration();
			/*model.addAttribute("acmedecorationList", acmedecorationList);*/
			String[] pic=new String[acmedecorationList.size()];
			for(int i=0;i<acmedecorationList.size();i++){
				pic[i] = acmedecorationList.get(i).getAcmedecorationPic().toString();
			}
			String[] minPic=new String[acmedecorationList.size()];
			for(int i=0;i<acmedecorationList.size();i++){
				minPic[i] = acmedecorationList.get(i).getAcmedecorationMinpic().toString();
			}
			String[] id=new String[acmedecorationList.size()];
			for(int i=0;i<acmedecorationList.size();i++){
				id[i] = acmedecorationList.get(i).getAcmedecorationId().toString();
			}
			Map<String, Object> results = new HashMap<String,Object>();
	        results.put("acmedecorationPic", pic);
	        results.put("acmedecorationMinpic", minPic);
	        results.put("acmedecorationId", id);
			return results;
		}
		
		@RequestMapping("/contactUs")
		public String toContactUs(){
			return "/user/other/contactUs";
		}
		
		@RequestMapping("/recruit")
		public String toRecruit(){
			return "/user/other/recruit";
		}
		
		@RequestMapping("/about")
		public String toAbout(){
			return "/user/other/about";
		}
		
		//找回密码
		@RequestMapping("/account")
		public String toAccount(){
			return "/user/iforgot/account";
		}
		@RequestMapping("/identity")
		public String toIdentity(){
			return "/user/iforgot/identity";
		}
		@RequestMapping("/newpass")
		public String toNewpass(){
			return "/user/iforgot/newpass";
		}
		@RequestMapping("/finish")
		public String toFinish(){
			return "/user/iforgot/finish";
		}
		//材料
		@RequestMapping("/material")
		public String toMaterial(){
			return "/user/material/material";
		}
		@RequestMapping("/materialRight")
		public String toMaterialRight(){
			return "/user/material/materialRight";
		}
		@RequestMapping("/materialDetail")
		public String toMaterialDetail(){
			return "/user/material/materialDetail";
		}
		@RequestMapping("/materialRightSec")
		public String toMaterialRightSec(){
			return "/user/material/materialRightSec";
		}
		@RequestMapping("/materialDetailSec")
		public String toMaterialDetailSec(){
			return "/user/material/materialDetailSec";
		}
		@RequestMapping("/tologin")
		public String tologin(){
			return "/user/login";
		}
}
