package com.finalProject.enjoin.crew.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.multipart.MultipartFile;

import com.finalProject.enjoin.crew.model.vo.Crew;

@Controller
public class CrewController {


	//크루모집 게시판 연결
	@RequestMapping("crewRecruitmentBoard.shw2")
	public String showCrewRecruitmentBoard() {

		return "crew/crewRecruitmentBoard";
	}
	//크루활동 모집내역폼
	@RequestMapping("crewRecruitment.shw2")
	public String showCrewRecruitment() {
		
		return "crew/crewRecruitment";
	}
	//크루활동 게시판연결
	@RequestMapping("crewActivityBoard.shw2")
	public String showCrewActivityBoard() {

		return "crew/crewActivityBoard";
	}
	//크루활동내역폼
	@RequestMapping("crewActivity.shw2")
	public String showCrewActivity() {
			
		return "crew/crewActivity";
	}
	
	
	




	@RequestMapping(value="crewInsert.shw2")
	public String insertCrewMember(Model model,Crew c,HttpServletRequest request,
		@RequestParam(name="origin_Name",  required=false) MultipartFile origin_Name) {


		System.out.println("origin_Name :" + origin_Name);
		System.out.println("crew :" + c);

		
		return "";

	}
}
