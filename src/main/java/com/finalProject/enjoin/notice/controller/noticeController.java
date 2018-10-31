package com.finalProject.enjoin.notice.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.finalProject.enjoin.myPage.model.vo.PageInfo;
import com.finalProject.enjoin.myPage.model.vo.Pagination;
import com.finalProject.enjoin.notice.model.service.BoardService;
import com.finalProject.enjoin.notice.model.vo.Board;

@Controller
public class noticeController {
	
	@Autowired
	private BoardService bs;
	
	//공지사항 목록
	@RequestMapping("notice.hh")
	public ModelAndView list(ModelAndView mav, HttpServletRequest request) throws Exception {
		int currentPage = 1;
		
		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		int listCount = bs.getListCount();
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		
		List<Board> list = bs.listAll(pi);

		mav.setViewName("notice/noticePage");
		mav.addObject("list", list);
		mav.addObject("pi", pi);
		return mav;
	}
	
	//공지사항 상세보기
	@RequestMapping("noticeDetail.hh")
	public ModelAndView view(@RequestParam("boardNo")int boardNo, ModelAndView mv) throws Exception{
		Board detail = bs.read(boardNo);
		
		System.out.println(detail);
		mv.setViewName("notice/noticeDetail");
		mv.addObject("detail", detail);
		
		return mv;
	}
	
	@RequestMapping("serviceCenter.hh")
	public String serviceCenter() {
		
		return "notice/serviceCenter";
	}
	
	@RequestMapping("contact.hh")
	public String contact() {
		
		return "notice/contact";
	}
	
	@RequestMapping("contactDetail.hh")
	public String contactDetail() {
		
		return "notice/contactDetail";
	}
	
	@RequestMapping("passPurchase.hh")
	public String passPurchase() {
		
		return "notice/passPurchase";
	}
	
	@RequestMapping("passPurchaseDetail.hh")
	public String passPurchaseDetail() {
		
		return "notice/passPurchaseDetail";
	}
	
	@RequestMapping("passPurchaseFinish.hh")
	public String passPurchaseFinish() {
		
		return "notice/passPurchaseFinish";
	}
	
	@RequestMapping("FAQ.hh")
	public String FAQ() {
		
		return "notice/FAQ";
	}

	@RequestMapping("FAQ_detail.hh")
	public String FAQ_detail() {
		
		return "notice/FAQ_detail";
	}
	
	//관리자 공지사항 목록
	@RequestMapping("adminNotice.hh")
	public String adminNotice() {
		
		return "notice/adminNotice";
	}
	
	//관리자 공지사항 상세보기
	@RequestMapping("adminNoticeDetail.hh")
	public String adminNoticeDetail() {
		
		return "notice/adminNoticeDetail";
	}
}
