package com.finalProject.enjoin.company.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

@SessionAttributes("loginUser")
@Controller
public class CompanyController {

	
	
	//제휴시설 등록폼 보여주는 메소드
	@RequestMapping("companyInsertForm.me")
	public String showCompanyInsertForm(){
		return "company/companyInsert";
	}
	
	//나의 제휴시설을 보여주는 메소드
	@RequestMapping("companylist.me")
	public String showCompany(){
		return "company/companyView";
	}
	
	//나의 시설 이용내역을 보여주는 메소드
	@RequestMapping("useHistory.me")
	public String showUseHistory() {
		return "company/useHistory";
	}
	
	//입장확인 폼을 보여주는 메소드
	@RequestMapping("enterConfirm.me")
	public String showEnterConfirm() {
		return "company/enterConfirm";
	}
}
