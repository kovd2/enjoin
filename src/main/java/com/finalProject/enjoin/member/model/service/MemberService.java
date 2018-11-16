package com.finalProject.enjoin.member.model.service;

import java.util.HashMap;
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

	int emailcheck(String user_email);

	//아이디 비밀번호 확인용
	int loginCheck2(HashMap<String, Object> hmap);

	//카카오 로그인 
	Member kakaoLogin(Member m);

	//db에 계정 추가
	int kakaoInsert(Member m);





}
