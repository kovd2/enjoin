package com.finalProject.enjoin.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminPageController {
	
	//관리자페이지 홈
	@RequestMapping("adminSideBar.hh")
	public String adminSideBar() {
		
		return "admin/adminSideBar";
	}
	
	
	@RequestMapping("adminMember.shw")
	public String showAdminMember() {
		
		
		return "admin/adminMember";
		
	}
}
