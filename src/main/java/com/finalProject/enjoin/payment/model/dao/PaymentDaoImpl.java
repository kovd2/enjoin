package com.finalProject.enjoin.payment.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.finalProject.enjoin.myPage.model.vo.PageInfo;
import com.finalProject.enjoin.payment.model.exception.paymentException;
import com.finalProject.enjoin.payment.model.vo.Pass;
import com.finalProject.enjoin.payment.model.vo.Passrecord;
import com.finalProject.enjoin.payment.model.vo.Payment;

@Repository
public class PaymentDaoImpl implements PaymentDao{

	
	@Autowired	
	private SqlSessionTemplate sqlSession;
	
	
	@Override
	public int insertPass(Pass p) {
		
		return sqlSession.insert("Payment.insertPass", p);
	}


	@Override
	public int insertPayment(Payment pm) {
		
		return sqlSession.insert("Payment.insertPayment", pm);
	}


	@Override
	public int insertPassrecord(Passrecord pr) {
		
		return sqlSession.insert("Payment.insertPassrecord", pr);
	}


	@Override
	public int getListCount() {
		
		return sqlSession.selectOne("Payment.getListCount");
	}


	@Override
	public List<Map<String, Object>> listAll(PageInfo pi) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
		
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		return sqlSession.selectList("Payment.listAll", null, rowBounds);
	}


	@Override
	public int updatePayment(Payment pm, String refundNo) throws paymentException {
		try {
			pm.setRefundNo(refundNo);
			
			return sqlSession.update("Payment.updatePayment", pm);
		}catch(Exception e) {
			throw new paymentException(e.getMessage());
		}
	}


	@Override
	public int updatePayment2(Passrecord pr, int userNo) throws paymentException {
		try {
			pr.setUserNo(userNo);
			
			return sqlSession.update("Payment.updatePayment2", pr);
		}catch(Exception e) {
			throw new paymentException(e.getMessage());
		}
	}


	@Override
	public int updatePayment3(Pass p, int userNo) throws paymentException {
		try {
			p.setUserNo(userNo);
			
			return sqlSession.update("Payment.updatePayment3", p);
		}catch(Exception e) {
			throw new paymentException(e.getMessage());
		}
	}


	@Override
	public int selectPaymentUserNo(Payment pm, String refundNo) {
		
		pm.setRefundNo(refundNo);
		
		return sqlSession.selectOne("Payment.selectPaymentUserNo", pm);
	}


	@Override
	public int insertPayment2(Payment pm) {
		
		return sqlSession.insert("Payment.insertPayment2", pm);
	}


	@Override
	public int insertPassrecord2(Passrecord pr) {
		
		return sqlSession.insert("Payment.insertPassrecord2", pr);
	}


	@Override
	public int insertPass2(Pass p) {
		
		return sqlSession.insert("Payment.insertPass2", p);
	}


	@Override
	public int insertPayment3(Payment pm) {
		
		return sqlSession.insert("Payment.insertPayment3", pm);
	}


	@Override
	public int insertPassrecord3(Passrecord pr) {
		
		return sqlSession.insert("Payment.insertPassrecord3", pr);
	}


	@Override
	public int insertPass3(Pass p) {
		
		return sqlSession.insert("Payment.insertPass3", p);
	}


	@Override
	public int insertPayment4(Payment pm) {
		
		return sqlSession.insert("Payment.insertPayment4", pm);
	}


	@Override
	public int insertPassrecord4(Passrecord pr) {
		
		return sqlSession.insert("Payment.insertPassrecord4", pr);
	}


	@Override
	public int insertPass4(Pass p) {
		
		return sqlSession.insert("Payment.insertPass4", p);
	}


	@Override
	public int selectplusPass(Payment pm) {
		
		return sqlSession.selectOne("Payment.selectplusPass", pm);
	}


	@Override
	public int updatePayment22(Passrecord pr, int userNo) {

		pr.setUserNo(userNo);
		
		return sqlSession.update("Payment.updatePayment22", pr);

	}

	@Override
	public int updatePayment222(Passrecord pr, int userNo) {
		
		pr.setUserNo(userNo);
		
		return sqlSession.update("Payment.updatePayment222", pr);

	}

	@Override
	public int updatePayment2222(Passrecord pr, int userNo) {
		
		pr.setUserNo(userNo);
		
		return sqlSession.update("Payment.updatePayment2222", pr);

	}


	@Override
	public int updatePayment33(Pass p, int userNo) {

		p.setUserNo(userNo);
		
		return sqlSession.update("Payment.updatePayment33", p);
	}

	@Override
	public int updatePayment333(Pass p, int userNo) {

		p.setUserNo(userNo);
		
		return sqlSession.update("Payment.updatePayment333", p);
	}

	@Override
	public int updatePayment3333(Pass p, int userNo) {

		p.setUserNo(userNo);
		
		return sqlSession.update("Payment.updatePayment3333", p);
	}


	@Override
	public List<Payment> listAll(String searchOption, String keyword) {
		
		Map<String, String> map = new HashMap<String, String>();
		
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		
		return sqlSession.selectList("Payment.searchListAll", map);
	}

}
