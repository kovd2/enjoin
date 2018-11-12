package com.finalProject.enjoin.payment.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.finalProject.enjoin.myPage.model.vo.PageInfo;
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

}
