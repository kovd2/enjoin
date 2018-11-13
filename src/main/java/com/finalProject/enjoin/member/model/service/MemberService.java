package com.finalProject.enjoin.member.model.service;

import java.util.Map;

import com.finalProject.enjoin.member.model.exception.LoginException;
import com.finalProject.enjoin.member.model.vo.Member;

public interface MemberService {

	Member loginMember(Member m) throws LoginException;

	int insertMember(Member m);

	int insertCompany(Member m);

	Member searchId(Member m);
	
	Member getPw(Map<String, Object> paramMap);

	int updateNewPwd(Member m);

	int idcheck(String userid);



}
