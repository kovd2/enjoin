package com.finalProject.enjoin.member.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.finalProject.enjoin.member.model.exception.LoginException;
import com.finalProject.enjoin.member.model.service.MemberService;
import com.finalProject.enjoin.member.model.vo.Member;

@SessionAttributes("loginUser")
@Controller
public class MemberController {
	@Autowired
	private MemberService ms;
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	
	
	//리다이렉트용 메소드
	@RequestMapping("goMain.me")
	public String goMain() {
		return "main/main";
	}
	
	//제휴시설회원 개인회원 선택 폼 보여주는 메소드
	@RequestMapping("preInsertView.me")
	public String showPreInsertFormview() {
		return "member/preInsert";
	}
	//개인회원가입폼 보여주는 메소드
	@RequestMapping("memberInsertView.me")
	public String showMemberInsertFormView() {
		return "member/insertForm";
	}
	
	//제휴시설회원 가입폼 보여주는 메소드
	@RequestMapping("companyInsertView.me")
	public String showCompanyInsertFormView() {
		return "member/companyMemberInsertForm";
	}
	
	//아이디 찾기 폼 보여주는 메소드
	@RequestMapping("searchId.me")
	public String showSearchId() {
		return "member/searchId";
	}
	
	//비밀번호 찾기 폼 보여주는 메소드
	@RequestMapping("searchPassword.me")
	public String showSearchPassword() {
		return "member/searchPassword";
	}
	
	//제휴시설 회원가입용 컨트롤러
	@RequestMapping("companyInsert.me")
	public String insertCompany(Model model, Member m) {
		System.out.println(passwordEncoder);
		System.out.println(m);
		String encPassword = passwordEncoder.encode(m.getUserPwd());
		m.setUserPwd(encPassword);
		
		System.out.println(encPassword);
		
		int result = ms.insertCompany(m);
		
		if(result>0){
			return "redirect:goMain.me";
		}else {
			model.addAttribute("msg", "회원가입실패");
			return "common/errorPage";
		}
	}
	
	//회원가입용 컨트롤러
	@RequestMapping("insert.me")
	public String insertMember(Model model, Member m) {
		System.out.println(passwordEncoder);
		System.out.println(m);
		String encPassword = passwordEncoder.encode(m.getUserPwd());
		m.setUserPwd(encPassword);
		
		System.out.println(encPassword);
		
		int result = ms.insertMember(m);
		
		if(result>0){
			return "redirect:goMain.me";
		}else {
			model.addAttribute("msg", "회원가입실패");
			return "common/errorPage";
		}
			
	}
	
	//로그인 폼 보여주는 메소드
	@RequestMapping("memberLogin.me")
	public String showMemberLoginView() {
		return "member/login";
	}
	
	
	//로그인용 컨트롤러
	@RequestMapping("login.me")
	public String loginCheck(Member m, Model model) {
		Member loginUser;
				
		try {
			loginUser = ms.loginMember(m);
			model.addAttribute("loginUser", loginUser);
			
			System.out.println(loginUser);
			
			if(loginUser.getUserType().equals("1")) {
			
				return "redirect:goMain.me";
				
			}else if(loginUser.getUserType().equals("2")) {
				
				return "company/companyInsert";
				
			}else {
				
				return "redirect:goMain.me";
			}
			
		} catch (LoginException e) {
			
			model.addAttribute("msg", e.getMessage());
			
			return "common/errorPage";
		}
		
		
	}
	

	//로그아웃용 컨트롤러
	@RequestMapping("logout.me")
	public String logout(SessionStatus status) {
		status.setComplete();
		
		return "redirect:goMain.me";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	/*------------------------------------------------------------------------------------------------*/
	//이용약관 보여주는 메소드
	@RequestMapping("conditions.me")
	public String showConditions() {
		
		return "member/conditions";
	}
	
	//개인정보취급방침 보여주는 메소드
	@RequestMapping("personalInfo.me")
	public String showPersonalInfo() {
		
		return "member/personalInfo";
	}
}
