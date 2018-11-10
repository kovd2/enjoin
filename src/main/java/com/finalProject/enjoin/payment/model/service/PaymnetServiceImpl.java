package com.finalProject.enjoin.payment.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalProject.enjoin.payment.model.dao.PaymentDao;
import com.finalProject.enjoin.payment.model.vo.Pass;

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

}
