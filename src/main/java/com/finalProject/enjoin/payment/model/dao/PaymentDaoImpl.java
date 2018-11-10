package com.finalProject.enjoin.payment.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.finalProject.enjoin.payment.model.vo.Pass;

@Repository
public class PaymentDaoImpl implements PaymentDao{

	
	@Autowired	
	private SqlSessionTemplate sqlSession;
	
	
	@Override
	public int insertPass(Pass p) {
		
		return sqlSession.insert("Board.insertPass", p);
	}

}
