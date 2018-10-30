package com.finalProject.enjoin.notice.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.finalProject.enjoin.notice.model.service.BoardService;
import com.finalProject.enjoin.notice.model.vo.Board;

@Controller
public class noticeController {
	
	@Autowired
	private BoardService bs;
	
	@RequestMapping("notice.hh")
	public ModelAndView list() throws Exception {
	
	 List<Board> list = bs.listAll();
	 System.out.println("list : " + list);
	 ModelAndView mav = new ModelAndView();
	 mav.setViewName("notice/noticePage");
	 mav.addObject("list", list);
	 
	 return mav;
	}
	
	@RequestMapping("noticeDetail.hh")
	public String noticeDetail() {
		
		return "notice/noticeDetail";
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
	
}
