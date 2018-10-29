package com.finalProject.enjoin.myPage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyPageController {
	//프로필
	@RequestMapping("profil.ljs")
	public String showProfil() {
		
		return "myPage/membership";
	}
	
	//정보수정
	@RequestMapping("changeInfo.ljs")
	public String changeInfo() {
		
		return "myPage/changeInfo";
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
