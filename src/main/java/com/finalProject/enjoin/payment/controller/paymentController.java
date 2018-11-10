package com.finalProject.enjoin.payment.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.finalProject.enjoin.member.model.vo.Member;
import com.finalProject.enjoin.payment.model.service.PaymentService;
import com.finalProject.enjoin.payment.model.vo.Pass;

@Controller
public class paymentController {
	
	//의존성 주입
	@Autowired
	private PaymentService ps;
	
	//7패스 결제완료
	@RequestMapping("passPurchaseFinish.hh")
	public String passPurchaseFinish(@ModelAttribute Pass p, HttpServletRequest request) {
		
		int userNo = ((Member)(request.getSession().getAttribute("loginUser"))).getUserNo();
		
		ps.insertPass(p, userNo);
		
		
		return "notice/passPurchaseFinish";
	}

}
