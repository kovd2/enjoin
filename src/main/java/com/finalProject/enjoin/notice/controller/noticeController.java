package com.finalProject.enjoin.notice.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class noticeController {

	@RequestMapping("notice.hh")
	public String notice() {
		
		return "notice/noticePage";
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
