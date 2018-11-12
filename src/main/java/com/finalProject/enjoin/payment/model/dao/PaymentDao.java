package com.finalProject.enjoin.payment.model.dao;

import java.util.List;
import java.util.Map;

import com.finalProject.enjoin.myPage.model.vo.PageInfo;
import com.finalProject.enjoin.payment.model.vo.Pass;
import com.finalProject.enjoin.payment.model.vo.Passrecord;
import com.finalProject.enjoin.payment.model.vo.Payment;

public interface PaymentDao {

	int insertPass(Pass p);

	int insertPayment(Payment pm);

	int insertPassrecord(Passrecord pr);

	int getListCount();

	List<Map<String, Object>> listAll(PageInfo pi);

}
