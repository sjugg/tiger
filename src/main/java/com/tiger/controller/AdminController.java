package com.tiger.controller;

import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tiger.jms.ProducterService;
import com.tiger.pojo.Admin;
import com.tiger.service.AdminService;

@Controller
@RequestMapping("admin/admin")
public class AdminController {
	@Resource
	private AdminService adminService;
	@Autowired
	private ProducterService producterService;

	// 管理员管理
	@RequestMapping("/loginAdmin")
	public String toLogin(HttpServletRequest request, Model model) {
		return "/loginAdmin";
	}

	@RequestMapping("/updatePassword")
	public String toAdminUpdatePassword() {
		return "admin/index/updatePassword";
	}

	@RequestMapping("/showAdmin")
	public String toIndex(HttpServletRequest request, Model model) {
		int adminId = Integer.parseInt(request.getParameter("id"));
		Admin admin = this.adminService.getAdminById(adminId);
		model.addAttribute("admin", admin);
		return "admin/showAdmin";
	}

	@RequestMapping("/delAdmin")
	public String delIndex(HttpServletRequest request, Model model) {
		int adminId = Integer.parseInt(request.getParameter("id"));
		this.adminService.delAdminById(adminId);
		return "redirect:/admin/showAllAdmin";
	}

	@RequestMapping("/showAllAdmin")
	public String toAllIndex(HttpServletRequest request, Model model) {
		List<Admin> adminList = this.adminService.getAllAdmin();
		model.addAttribute("adminList", adminList);
		return "admin/admin/showAllAdmin";
	}

	@RequestMapping("toAddAdmin")
	public String toAddAdmin() {
		return "admin/admin/addAdmin";
	}

	@RequestMapping("/addAdmin")
	public String addIndex(Admin admin, Model model) {
		admin.setAdminAddTime(new Date());
		this.adminService.addAdmin(admin);
		model.addAttribute("url", "admin/showAllAdmin");
		model.addAttribute("msg", "添加成功");
		return "result/success";
	}

	@RequestMapping("/toUpdateAdmin")
	public String toUpdateAdmin(HttpServletRequest request, Model model) {
		int adminId = Integer.parseInt(request.getParameter("id"));
		Admin admin = this.adminService.getAdminById(adminId);
		model.addAttribute("admin", admin);
		return "admin/admin/updateAdmin";
	}

	@RequestMapping("/updateAdmin")
	public String updateIndex(HttpServletRequest request, Admin admin,
			Model model) {
		this.adminService.updateAdmin(admin);
		model.addAttribute("admin", admin);
		return "admin/updateAdmin";
	}

	@RequestMapping("/toAdminLogin")
	public String toLogin() {
		return "/admin/adminLogin";
	}

	/*
	 * @RequestMapping(value="/adminLogin",method=RequestMethod.POST) public
	 * String adminLogin(Admin admin,HttpServletRequest request,Model model){
	 * String result = null; admin =
	 * adminService.checkLogin(admin.getAdminName(),admin.getAdminPassword());
	 * if(admin != null) { HttpSession session = request.getSession();
	 * session.setAttribute("adminSession", admin); result =
	 * "redirect:../result/successAdminLogin"; }else { result =
	 * "redirect:../result/failed"; } return result; }
	 */
	@RequestMapping("/showNote")
	public String sendNote(HttpServletRequest request, Model model) {
		return "admin/note/showNote";
	}

	@RequestMapping("/sendNote")
	public void sendNote(String content, String title,
			HttpServletResponse response) {
		System.out.println(content);
		try {
			if (StringUtils.isNotEmpty(content)) {
				JSONObject jsonObject=new JSONObject();
				jsonObject.put("content", content);
				jsonObject.put("title", title);
				producterService.sedMessage(jsonObject.toString());
				response.getWriter().print(1);
			}
		} catch (IOException e) {
			try {
				response.getWriter().print(0);
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			e.printStackTrace();
		}
	}

}
