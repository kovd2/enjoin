package com.finalProject.enjoin.payment.model.dao;

import java.util.List;
import java.util.Map;

import com.finalProject.enjoin.myPage.model.vo.PageInfo;
import com.finalProject.enjoin.payment.model.exception.paymentException;
import com.finalProject.enjoin.payment.model.vo.Pass;
import com.finalProject.enjoin.payment.model.vo.Passrecord;
import com.finalProject.enjoin.payment.model.vo.Payment;

public interface PaymentDao {

	int insertPass(Pass p);

	int insertPayment(Payment pm);

	int insertPassrecord(Passrecord pr);

	int getListCount();

	List<Map<String, Object>> listAll(PageInfo pi);

	int updatePayment(Payment pm, String refundNo) throws paymentException;

	int updatePayment2(Passrecord pr, int userNo) throws paymentException;

	int updatePayment3(Pass p, int userNo) throws paymentException;

	int selectPaymentUserNo(Payment pm, String refundNo);

	int insertPayment2(Payment pm);

	int insertPassrecord2(Passrecord pr);

	int insertPass2(Pass p);

	int insertPayment3(Payment pm);

	int insertPassrecord3(Passrecord pr);

	int insertPass3(Pass p);

	int insertPayment4(Payment pm);

	int insertPassrecord4(Passrecord pr);

	int insertPass4(Pass p);

	int selectplusPass(Payment pm);

	int updatePayment22(Passrecord pr, int userNo);

	int updatePayment222(Passrecord pr, int userNo);

	int updatePayment2222(Passrecord pr, int userNo);

	int updatePayment33(Pass p, int userNo);

	int updatePayment333(Pass p, int userNo);

	int updatePayment3333(Pass p, int userNo);

	List<Payment> listAll(String searchOption, String keyword);

}
