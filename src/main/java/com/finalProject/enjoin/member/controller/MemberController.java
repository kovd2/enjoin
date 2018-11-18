package com.finalProject.enjoin.member.controller;


import java.util.HashMap;
import java.util.List;
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
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.finalProject.enjoin.common.util.EmailSender;

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
	
	
	//메인페이지
	@RequestMapping("goMain.me")
	public ModelAndView Main(ModelAndView mv) {
		
		List<HashMap<String, Object>> crewList = ms.crewList();
		

		
		mv.setViewName("main/main");
		mv.addObject("crewList", crewList);
		
		System.out.println(crewList);
		
		return mv;
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
			Model model, ModelAndView mv, Member m) throws Exception{
		
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
        	
            email.setContent("임시 비밀번호는 "+password2+" 입니다. 비밀번호를 변경해 주세요."); // 이메일로 보낼 메시지
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
                
                String encPassword = passwordEncoder.encode(password2);
        		m.setUserPwd(encPassword);
                 
        		System.out.println(encPassword);
        		
        		
        		int result = ms.updateNewPwd(m);
        		
        		
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
	
	
	
	//로그인 실패 했을때 가는 메소드
	@RequestMapping("loginFail.me")
	public String loginFail() {
		return "member/loginFail";
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
			
			return "member/login";
		}
		
		
	}
	
	//카카오 로그인용 컨트롤러
	@RequestMapping("kakaoLogin.me")
	@ResponseBody
	public String kakaoLogin(Member m, Model model, @RequestParam(value = "userName", required = false) String userName, 
							@RequestParam(value = "email", required = false) String email) {
		
		String userName2 = userName.replace("\"",  "");
		String email2 = email.replace("\"",  "");
		System.out.println("model:" + model);
		
		m.setUserName(userName2);
		m.setEmail(email2);
		
		System.out.println("m" + m);
		Member loginUser;
		
		loginUser=ms.kakaoLogin(m);
		
		
		System.out.println("userName : "+ userName2);
		System.out.println("email : " + email2);
		
		System.out.println("loginUser : " + loginUser);
		if(loginUser == null) {		//카카오로 가입한 유저의 정보가 없을시
			System.out.println("in if");
			int result = 0;
			
			result = ms.kakaoInsert(m);		//db에 정보 추가
			
			if(result > 0) {		//insert 성공시 해당 계정으로 로그인
				
				Member loginUser2 = ms.kakaoLogin(m);
				model.addAttribute("loginUser", loginUser2);
				return "redirect:goMain.me";
			}
			
		}
			
		//카카오로 가입한 유저의 정보가 있을시 로그인
		model.addAttribute("loginUser", loginUser);
		
		
		return "redirect:goMain.me";
	}
	

	//로그아웃용 컨트롤러
	@RequestMapping("logout.me")
	public String logout(SessionStatus status) {
		status.setComplete();
		
		return "redirect:goMain.me";
	}

	//아이디 중복 확인용 컨트롤러
	 @RequestMapping("duplicationCheck.me")
	    @ResponseBody
	    public String idcheck(@RequestBody String userid) {
	        
	        int count = 0;
	        count = ms.idcheck(userid);

	       
	        System.out.println(count);
	        
	        return String.valueOf(count);
	        
	    }

	
	 //이메일 중복 확인용 컨트롤러
	 @RequestMapping("duplicationCheck2.me")
	    @ResponseBody
	    public String emailcheck(@RequestBody String user_email) {
	        
	        int count = 0;
	        count = ms.emailcheck(user_email);

	       
	        System.out.println(count);
	        
	        return String.valueOf(count);
	        
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
