package com.finalProject.enjoin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class TestController {
	@RequestMapping("typography.test")
	public String showTypography() {
		
		return "typography";
	}
	
	
	@RequestMapping("portfolio.test")
	public String showPortfolio() {
		
		return "portfolio";
	}
	
	@RequestMapping("blog.test")
	public String showBlog() {
		
		return "blog";
	}
	
	@RequestMapping("contact.test")
	public String showContact() {
		
		return "contact";
	}
	
	@RequestMapping("crewApplication.test")
	public String showCrewApplication() {
		
		
		return "crew/crewApplication";
	}
	//크루제휴시설폼
	@RequestMapping("crewAffiliate.test")
	public String showCrewAffiliate() {
		
		
		return "crew/crewAffiliate";
	}
	/*//크루활동내역폼
	@RequestMapping("crewActivity.test")
	public String showCrewActivity() {
		
		return "crew/crewActivity";
	}*/
/*	//크루 모집내역폼
	@RequestMapping("crewRecruitment.test")
	public String showCrewRecruitment() {
		
		return "crew/crewRecruitment";
	}*/
	/*//크루이벤트 게시판연결
	@RequestMapping("crewActivityBoard.test")
	public String showCrewActivityBoard() {
		
		return "crew/crewActivityBoard";
	}*/
	/*//크루모집 게시판 연결
	@RequestMapping("crewRecruitmentBoard.test")
	public String showCrewRecruitmentBoard() {
		
		return "crew/crewRecruitmentBoard";
	}*/
	//크루모집상세보기페이지이동
	@RequestMapping("crewRecruitmentDetails.test")
	public String showCrewRecruitmentDetails() {
		
		return "crew/crewRecruitmentDetails";
	}
	//크루활동게시판상세보기
	@RequestMapping("crewActivityDetails.test")
	public String showCrewActivityDetails() {
		
		
		return "crew/crewActivityDetails";
	}
	//관리자페이지연결
	@RequestMapping("adminMainPage.test")
	public String showAdminMainPage() {
		
		
		return "admin/adminMainPage";
	}
	//관리자페이지 회원정보
	@RequestMapping("adminMember.test")
	public String showAdminMember(){
		
		
		return "admin/adminMember";
	}
	//관리자페이지 결제정보
	@RequestMapping("adminPay")
	public String showAdminPay() {
		
		
		return "admin/adminPay";
	}	
	
}
