package com.finalProject.enjoin.payment.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalProject.enjoin.myPage.model.vo.PageInfo;
import com.finalProject.enjoin.payment.model.dao.PaymentDao;
import com.finalProject.enjoin.payment.model.exception.paymentException;
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

	@Override
	public int updatePayment(Payment pm, String refundNo) throws paymentException {

		return pd.updatePayment(pm, refundNo);
		
	}

	@Override
	public int updatePayment2(Passrecord pr, int userNo) throws paymentException {
		
		return pd.updatePayment2(pr, userNo);
	}

	@Override
	public int updatePayment3(Pass p, int userNo) throws paymentException {
		
		return pd.updatePayment3(p, userNo);
	}

	@Override
	public int selectPaymentUserNo(Payment pm, String refundNo) {
		
		return pd.selectPaymentUserNo(pm, refundNo);
	}

	@Override
	public int insertPayment2(Payment pm, int userNo, int price, String proofNo, String refundNo) {
		
		pm.setUserNo(userNo);
		pm.setPrice(price);
		pm.setProofNo(proofNo);
		pm.setRefundNo(refundNo);
		
		int result = pd.insertPayment2(pm);
		
		
		return result;
	}

	@Override
	public int insertPassrecord2(Passrecord pr, int payNo, int userNo) {
		
		pr.setPayNo(payNo);
		pr.setUserNo(userNo);
		
		int result = pd.insertPassrecord2(pr);
		
		return result;
	}

	@Override
	public int insertPass2(Pass p, int userNo) {

		p.setUserNo(userNo);
		
		int result = pd.insertPass2(p);


		return result;

	}

	@Override
	public int insertPayment3(Payment pm, int userNo, int price, String proofNo, String refundNo) {
		pm.setUserNo(userNo);
		pm.setPrice(price);
		pm.setProofNo(proofNo);
		pm.setRefundNo(refundNo);
		
		int result = pd.insertPayment3(pm);
		
		
		return result;
	}

	@Override
	public int insertPassrecord3(Passrecord pr, int payNo, int userNo) {
		
		pr.setPayNo(payNo);
		pr.setUserNo(userNo);
		
		int result = pd.insertPassrecord3(pr);
		
		return result;
	}

	@Override
	public int insertPass3(Pass p, int userNo) {
		p.setUserNo(userNo);
		
		int result = pd.insertPass3(p);


		return result;
	}

	@Override
	public int insertPayment4(Payment pm, int userNo, int price, String proofNo, String refundNo) {
		pm.setUserNo(userNo);
		pm.setPrice(price);
		pm.setProofNo(proofNo);
		pm.setRefundNo(refundNo);
		
		int result = pd.insertPayment4(pm);
		
		
		return result;
	}

	@Override
	public int insertPassrecord4(Passrecord pr, int payNo, int userNo) {
		
		pr.setPayNo(payNo);
		pr.setUserNo(userNo);
		
		int result = pd.insertPassrecord4(pr);
		
		return result;
	}

	@Override
	public int insertPass4(Pass p, int userNo) {
		
		p.setUserNo(userNo);
		
		int result = pd.insertPass4(p);


		return result;
	}

	@Override
	public int selectplusPass(Payment pm, String refundNo) {
		
		pm.setRefundNo(refundNo);
		
		return pd.selectplusPass(pm);
	}

	@Override
	public int updatePayment22(Passrecord pr, int userNo) {
		
		return pd.updatePayment22(pr, userNo);
	}

	@Override
	public int updatePayment222(Passrecord pr, int userNo) {
		
		return pd.updatePayment222(pr, userNo);
	}

	@Override
	public int updatePayment2222(Passrecord pr, int userNo) {
		
		return pd.updatePayment2222(pr, userNo);
	}

	@Override
	public int updatePayment33(Pass p, int userNo) {

		return pd.updatePayment33(p, userNo);
	}

	@Override
	public int updatePayment333(Pass p, int userNo) {
		
		return pd.updatePayment333(p, userNo);
	}

	@Override
	public int updatePayment3333(Pass p, int userNo) {
		
		return pd.updatePayment3333(p, userNo);
	}

}