package com.finalProject.enjoin.myPage.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.finalProject.enjoin.member.model.vo.Member;
import com.finalProject.enjoin.myPage.model.service.myPageService;
import com.finalProject.enjoin.myPage.model.vo.PageInfo;
import com.finalProject.enjoin.myPage.model.vo.Pagination;
import com.finalProject.enjoin.myPage.model.vo.Pass;
import com.finalProject.enjoin.myPage.model.vo.Board;

@Controller
public class MyPageController {
  
	//프로필
	@Autowired
	private myPageService mps;
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	//프로필 (pass수량 조회)
	@RequestMapping("profil.ljs")
	public ModelAndView showProfil(ModelAndView mv, @RequestParam("userNo") int userNo) {	
		
		List<Pass> pass = mps.selectPass(userNo);
		System.out.println("pass : " + pass);
		mv.setViewName("myPage/membership");
		mv.addObject("pass", pass);
		return mv;
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
	public ModelAndView goCrewBoard(ModelAndView mv, HttpServletRequest request ){
		int currentPage = 1;
		
		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		
		int listCount = mps.getListCount();
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		//게시물 전체
		List<Board> list = mps.crewBoardList(pi);
		
		mv.setViewName("crew/crewBoardList");
		mv.addObject("list", list);
		mv.addObject("pi", pi);
		
		return mv;
	}
	
	//크루 게시판 상세보기
	@RequestMapping("crewBoardDetail.ljs")
	public ModelAndView crewBoardDetail(@RequestParam("boardNo") int boardNo, ModelAndView mv) {
		System.out.println("boardNo : " + boardNo);
		Board b = mps.crewBoardDetail(boardNo);
		
		int rCount = 0;
		
		if(b.getComentList().get(0).getComentNo() > 0) {
			rCount = b.getComentList().size();
		}
		System.out.println("Detail : " + b);
		System.out.println("rCount : " + rCount);
		
		mv.setViewName("crew/crewBoardDetail");
		mv.addObject("Detail", b);
		mv.addObject("rCount", rCount);
		
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
	
	//회원 탈퇴
	@RequestMapping("deleteMember.ljs")
	public String deleteMember(@RequestParam("userId") String userId) {
		System.out.println("userId : " + userId);
		
		//mps.deleteMember(userId);
		
		return "";
	}
}























