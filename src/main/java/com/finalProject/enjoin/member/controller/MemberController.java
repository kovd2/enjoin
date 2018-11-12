package com.finalProject.enjoin.member.controller;

import java.util.Map;

import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.messaging.MessagingException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.finalProject.enjoin.common.util.EmailSender;
import com.finalProject.enjoin.common.util.FindUtil;
import com.finalProject.enjoin.member.model.exception.LoginException;
import com.finalProject.enjoin.member.model.service.MemberService;
import com.finalProject.enjoin.member.model.vo.Email;
import com.finalProject.enjoin.member.model.vo.Member;

@SessionAttributes("loginUser")
@Controller
public class MemberController {
	@Autowired
	private MemberService ms;
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	@Autowired
	private EmailSender emailSender;
	@Autowired
	private Email email;
/*	@Autowired
	private FileService fileService;*/
	@Autowired
	private JavaMailSender mailSender;
	

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
	
	/*//카카오 계정으로 가입하는 폼 보여주는 메소드
	@RequestMapping("kakaoMemberInsertView.me")
	public String showkakaoInsertView() {
		return "member/kakaoMemberInsertForm";
	}*/
	
	//아이디 찾기 폼 보여주는 메소드
	@RequestMapping("searchIdform.me")
	public String showSearchId() {
		return "member/searchId";
	}
	
	//아이디 찾기 컨트롤러
	@RequestMapping("searchId.me")
	public ModelAndView SearchId(Member m, HttpServletResponse response, ModelAndView mv) {
		
		m = ms.searchId(m);
		
		if(m != null) {
			
			System.out.println("Member : " + m );
			
			mv.setViewName("member/searchIdComplete");
			
			mv.addObject("m", m);
			
			return mv;
			
			
		}else {
			mv.setViewName("common/errorPage");
			return mv;
		}
		
	}
	
	//비밀번호 찾기 폼 보여주는 메소드
	@RequestMapping("searchPasswordform.me")
	public String showSearchPassword() {
		return "member/searchPassword";
	}
	
	//비밀번호 찾기용 컨트롤러
	@RequestMapping(value="searchPassword.me", method=RequestMethod.GET)
	public ModelAndView searchPassword(@RequestParam Map <String, Object> paramMap, 
			Model model, ModelAndView mv) throws Exception{
		
		String password2 = "";
		  for(int i = 0; i < 8; i++){

		   char lowerStr = (char)(Math.random() * 26 + 97);
		   if(i%2 == 0){
		    password2 += (int)(Math.random() * 10);
		   }else{
		    password2 += lowerStr;
		   }
		  }
		  
		System.out.println(password2);

		String USERID = (String) paramMap.get("userId");
        String USERNAME = (String) paramMap.get("userName");
        String EMAIL = (String) paramMap.get("email");
        
        Member PASSWORD = (Member) ms.getPw(paramMap);
        

        if(PASSWORD!=null) {
        	
            email.setContent("비밀번호는 "+password2+" 입니다."); // 이메일로 보낼 메시지
            email.setReceiver(EMAIL); //수신자
            email.setSubject(USERID+"("+USERNAME+")"+"님 비밀번호 찾기 메일입니다."); // 이메일로 보낼 제목
             
            try {
                MimeMessage msg = mailSender.createMimeMessage();
                MimeMessageHelper messageHelper = new MimeMessageHelper(msg, true, "UTF-8");
                
                messageHelper.setSubject(email.getSubject());
                messageHelper.setText(email.getContent());
                messageHelper.setTo(email.getReceiver());
                messageHelper.setFrom("tomatoqqll@gmail.com"); // 발신자
                msg.setRecipients(MimeMessage.RecipientType.TO , InternetAddress.parse(email.getReceiver()));
                mailSender.send(msg);
                 
            }catch(MessagingException e) {
                
                e.printStackTrace();
            }
            mv.setViewName("member/searchPwdComplete");
            return mv;
        }else {
            mv.setViewName("common/errorPage");
            return mv;
        }
    
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
