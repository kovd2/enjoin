package com.finalProject.enjoin.myPage.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.finalProject.enjoin.member.model.vo.Member;
import com.finalProject.enjoin.myPage.model.service.myPageService;
import com.finalProject.enjoin.notice.model.vo.Board;

@Controller
public class MyPageController {
  
	//프로필
	@Autowired
	private myPageService mps;
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	//프로필 (pass수량 조회)
	@RequestMapping("profil.ljs")
	public String showProfil(@ModelAttribute Member m) {	
		
		mps.selectPass(m);
		
		return "myPage/membership";
	}
	
	//정보수정 페이지
	@RequestMapping("changeInfo.ljs")
	public String changeInfo() {
		
		return "myPage/changeInfo";
	}
	//정보수정 저장
	@RequestMapping("saveInfo.ljs")
	public String updateMember(@ModelAttribute Member m) {
		
		String encPassword = passwordEncoder.encode(m.getUserPwd());
		m.setUserPwd(encPassword);
		
		mps.updateMember(m);	
		
		return "redirect:goMain.me";
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
	
	//크루 게시판 조회
	@RequestMapping("goCrewBoardList.ljs")
	public ModelAndView goCrewBoard(ModelAndView mv){
		
		List<Board> list = mps.crewBoardList();
		mv.setViewName("crew/crewBoardList");
		mv.addObject("list", list);
		System.out.println("list : " + list);
		return mv;
	}
	
	//크루 게시판 상세보기
	@RequestMapping("crewBoardDetail.ljs")
	public ModelAndView crewBoardDetail(@RequestParam("boardNo") int boardNo, ModelAndView mv) {
		System.out.println("boardNo : " + boardNo);
		Board b = mps.crewBoardDetail(boardNo);
		mv.setViewName("crew/crewBoardDetail");
		mv.addObject("Detail", b);
		System.out.println("Detail : " + b);
		return mv;
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























