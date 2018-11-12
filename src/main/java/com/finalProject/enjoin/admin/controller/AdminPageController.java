package com.finalProject.enjoin.admin.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.finalProject.enjoin.admin.model.service.AdminService;
import com.finalProject.enjoin.member.model.vo.Member;
import com.finalProject.enjoin.myPage.model.vo.PageInfo;
import com.finalProject.enjoin.myPage.model.vo.Pagination;


@SessionAttributes("loginUser")
@Controller
public class AdminPageController {
	@Autowired
	private AdminService as;
	
	//관리자페이지 홈
	@RequestMapping("adminSideBar.hh")
	public String adminSideBar() {
		
		return "admin/adminSideBar";
	}
	
	//관리자 회원 조회
	
	@RequestMapping("adminMember.shw")
	public ModelAndView showAdminMember(ModelAndView mv,HttpServletRequest request) {
		
		//일반 회원 리스트 카운트
		int currentPage = 1;
		
		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
			
		}
		int listCount = as.getListCount();
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		//일반 회원 정보 조회
		List<Member> list = as.memberSelect(pi);
		
		//기업 회원 리스트 카운트 
		
		int currentPage1 = 1;
		
		if(request.getParameter("curentPage1") != null) {
			currentPage1 = Integer.parseInt(request.getParameter("currentPage1"));
		}
		
		int listCount1 = as.getListCount1();
		
		PageInfo pi1 = Pagination.getPageInfo(currentPage1, listCount1);
		
		//기업 회원 정보 조회
		List<Member> list1 = as.companyMemberSelect(pi1);
		
		
		HashMap<String,Object> map = new HashMap<String,Object>();
		
		map.put("list", list);
		map.put("list1", list1);
		
		
		
		
		
		
		
		
		mv.setViewName("admin/adminMemberTable");
		mv.addObject("map", map);
		mv.addObject("pi",pi);
		mv.addObject("pi1", pi1);
		
		return mv;
		
	}
	
	//관리자로 회원 조회
}
