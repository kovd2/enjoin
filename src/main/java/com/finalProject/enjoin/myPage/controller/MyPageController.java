package com.finalProject.enjoin.myPage.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.finalProject.enjoin.member.model.vo.Member;
import com.finalProject.enjoin.myPage.model.service.myPageService;

@Controller
public class MyPageController {
  
	//프로필
	@Autowired
	private myPageService mps;
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	//프로필 (pass수량 조회)
	@RequestMapping("profil.ljs")
	public String showProfil() {	
		
		return "myPage/membership";
	}
	
	//정보수정 페이지
	@RequestMapping("changeInfo.ljs")
	public String changeInfo() {
		
		return "myPage/changeInfo";
	}
	//정보수정 저장
	@RequestMapping("saveInfo.ljs")
	public String saveInfo(Model model, Member m, HttpServletRequest request) {
		
		System.out.println("controller : " + m);
		
		int result = mps.updateMember(m);
		
		if(result > 0) {
			return "redirect:myPage/changeInfo";
		}else {
			model.addAttribute("msg", "회원정보 수정 실패!");
			return "common/errorPage";
		}
	}
	
	//가고싶은 시설
	@RequestMapping("wantPlace.ljs")
	public String wantPlace() {
		
		return "myPage/wantPlace";
	}
	
	//이용기록
	@RequestMapping("history.ljs")
	public String history() {
		
		return "myPage/history";
	}
	
	//크루관리
	@RequestMapping("crewManager.ljs")
	public String crewManager() {
		
		return "myPage/crewManager";
	}
	
	//기업관리 페이지 이동
	@RequestMapping("Enterprise.ljs")
	public String Enterprise() {
		
		return "myPage/enterprise";
	}
	
	//시설이용내역 페이지 이동
	@RequestMapping("enterpriseUseHistory.ljs")
	public String enterpriseUseHistory() {
		
		return "myPage/enterpriseUseHistory";
	}
	
	//크루 게시판 이동
	@RequestMapping("goCrewBoardList.ljs")
	public String goCrewBoard(/*@RequestParam crewId*/){
		
		return "crew/crewBoardList";
	}
	
	//크루 게시판 상세보기
	@RequestMapping("crewBoardDetail.ljs")
	public String crewBoardDetail() {
		
		return "crew/crewBoardDetail";
	}
	
	//크루 게시판 작성 폼으로 이동
	@RequestMapping("goCrewBoardForm.ljs")
	public String goCrewBoardForm() {
		
		return "crew/crewBoardForm";
	}
	
	//내가 쓴 게시물 / 리뷰/ 댓글 페이지
	@RequestMapping("writePosts.ljs")
	public String writePosts() {
		
		return "myPage/writePosts";
	}
			
}
