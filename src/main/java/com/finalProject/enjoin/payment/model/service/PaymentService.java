package com.finalProject.enjoin.payment.model.service;


import java.util.List;
import java.util.Map;

import com.finalProject.enjoin.myPage.model.vo.PageInfo;
import com.finalProject.enjoin.payment.model.vo.Pass;
import com.finalProject.enjoin.payment.model.vo.Passrecord;
import com.finalProject.enjoin.payment.model.vo.Payment;

public interface PaymentService {
	
	int insertPass(Pass p, int userNo);

	int insertPayment(Payment pm, int userNo, int price, String proofNo, String refundNo);

	int insertPassrecord(Passrecord pr, int payNo, int userNo);

	int getListCount();

	List<Map<String, Object>> listAll(PageInfo pi);


}
