package com.finalProject.enjoin.payment.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalProject.enjoin.myPage.model.vo.PageInfo;
import com.finalProject.enjoin.payment.model.dao.PaymentDao;
import com.finalProject.enjoin.payment.model.vo.Pass;
import com.finalProject.enjoin.payment.model.vo.Passrecord;
import com.finalProject.enjoin.payment.model.vo.Payment;

@Service
public class PaymnetServiceImpl implements PaymentService{

	//의존성 주입
	@Autowired
	private PaymentDao pd;
	
	
	@Override
	public int insertPass(Pass p, int userNo) {
		
		p.setUserNo(userNo);
		
		int result = pd.insertPass(p);


		return result;
	}


	@Override
	public int insertPayment(Payment pm, int userNo, int price, String proofNo, String refundNo) {
		
		pm.setUserNo(userNo);
		pm.setPrice(price);
		pm.setProofNo(proofNo);
		pm.setRefundNo(refundNo);
		
		int result = pd.insertPayment(pm);
		
		
		return result;
	}


	@Override
	public int insertPassrecord(Passrecord pr, int payNo, int userNo) {
		
		pr.setPayNo(payNo);
		pr.setUserNo(userNo);
		
		int result = pd.insertPassrecord(pr);
		
		return result;
	}


	@Override
	public int getListCount() {
		
		return pd.getListCount();
	}


	@Override
	public List<Map<String, Object>> listAll(PageInfo pi){
		
		return pd.listAll(pi);
	}




}
