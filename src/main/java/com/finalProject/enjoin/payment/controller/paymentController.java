package com.finalProject.enjoin.payment.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.finalProject.enjoin.member.model.vo.Member;
import com.finalProject.enjoin.payment.model.vo.*;
import com.finalProject.enjoin.myPage.model.vo.PageInfo;
import com.finalProject.enjoin.myPage.model.vo.Pagination;
import com.finalProject.enjoin.payment.model.service.PaymentService;
import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.exception.IamportResponseException;
import com.siot.IamportRestClient.request.CancelData;
import com.siot.IamportRestClient.response.IamportResponse;
import com.siot.IamportRestClient.response.Payment;



@Controller
public class paymentController {
	
	//의존성 주입
	@Autowired
	private PaymentService ps;
	
	IamportClient client = new IamportClient("2504951880239453", "1MMJeD4w97V5C6Vsa9Q7zmwIxZQgthzu3leiZiP9pKe2Rau1kk8UHECeEtu7K3COpQ7p8WzyGNBxY5zi");
	
	//7패스 결제완료
	@RequestMapping("passPurchaseFinish.hh")
	public String passPurchaseFinish(@ModelAttribute Pass p, HttpServletRequest request, @RequestParam(value="imp_uid")String imp_uid, 
			@RequestParam(value="merchant_uid")String merchant_uid, @RequestParam(value="paid_amount")int paid_amount, @RequestParam(value="apply_num")String apply_num) {
		
		int userNo = ((Member)(request.getSession().getAttribute("loginUser"))).getUserNo();
		
		int price = paid_amount;
		String proofNo = apply_num;
		String refundNo = imp_uid;
		
		com.finalProject.enjoin.payment.model.vo.Payment pm = new com.finalProject.enjoin.payment.model.vo.Payment();
		int result = ps.insertPayment(pm, userNo, price, proofNo, refundNo);
		
		int payNo = pm.getPayNo();
		
		if(result > 0) {
			Passrecord pr = new Passrecord();
			int result2 = ps.insertPassrecord(pr, payNo, userNo);
			
			if(result2 > 0) {
				
				
				int result3 = ps.insertPass(p, userNo);
				
			}
		}
		
		
		return "notice/passPurchaseFinish";
	}
	
	//결제 관리 페이지
	@RequestMapping("adminPayment.hh")
	public ModelAndView adminPayment(ModelAndView mav, HttpServletRequest request) {
		
		//페이징 처리
		int currentPage = 1;
		
		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		int listCount = ps.getListCount();
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		//내역 조회
		List<Map<String, Object>> list = ps.listAll(pi);
		
		System.out.println("리스트 : " + list);
		mav.setViewName("notice/adminPayment");
		mav.addObject("list", list);
		mav.addObject("pi", pi);
		
		return mav;
	}
	
	@RequestMapping("refundBtn.hh")
	public String refundBtn(@RequestParam("refundNo")String imp_uid, HttpServletRequest request) {
		
		String test_already_cancelled_imp_uid = imp_uid;
		CancelData cancel_data = new CancelData(test_already_cancelled_imp_uid, true); //imp_uid를 통한 전액취소
		
		try {
			IamportResponse<Payment> payment_response = client.cancelPaymentByImpUid(cancel_data);
			
		} catch (IamportResponseException e) {
			System.out.println(e.getMessage());
			
			switch(e.getHttpStatusCode()) {
			case 401 :
				//TODO
				break;
			case 500 :
				//TODO
				break;
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
      
		
		return "admin/adminMainPage";
	      
	}
	
	

}
