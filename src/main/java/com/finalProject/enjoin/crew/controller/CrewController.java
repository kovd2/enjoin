package com.finalProject.enjoin.crew.controller;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.finalProject.enjoin.common.util.CommonUtils;
import com.finalProject.enjoin.crew.model.service.CrewService;
import com.finalProject.enjoin.crew.model.vo.Crew;
import com.finalProject.enjoin.member.model.vo.Member;


@SessionAttributes("loginUser")
@Controller
public class CrewController {
	@Autowired
	private CrewService cs;


	//크루모집 게시판 연결
	@RequestMapping("crewRecruitmentBoard.shw2")
	public String showCrewRecruitmentBoard() {
		
		System.out.println("나오냐??");
		
		return "crew/crewRecruitmentBoard";
	}
	//크루활동 모집내역폼
	@RequestMapping("crewRecruitment.shw2")
	public String showCrewRecruitment() {
		
		System.out.println("나오냐??");
		
		return "crew/crewRecruitment";
	}
	//크루활동 게시판연결
	@RequestMapping("crewActivityBoard.shw2")
	public String showCrewActivityBoard() {

		return "crew/crewActivityBoard";
	}
	//크루활동내역폼
	@RequestMapping("crewActivity.shw2")
	public String showCrewActivity() {
			
		return "crew/crewActivity";
	}
	//다시돌려주기
	
	@RequestMapping("goCrew1.shw2")
	public String goCrew1() {
		
		return "crew/crewRecruitmentBoard";
	}
	

	
	




	@RequestMapping(value="crewInsert.shw2")
	public String insertCrewMember(Model model,/*Crew c,*/HttpServletRequest request,
		@RequestParam(name="origin_Name",  required=false) MultipartFile origin_Name,
		@RequestParam(name="origin_Name1",  required=false) MultipartFile origin_Name1){
		
		
		int userNo = ((Member)(request.getSession().getAttribute("loginUser"))).getUserNo();
		
		
		//가져온 데이터를 파라미터를 각각꺼내준다. 이유는 모르겠지만 객체설정해서 바로담으려하면 오류뜸
		String board_title = request.getParameter("board_title");
		String crew_Name = request.getParameter("crew_Name");
		int crew_Max = Integer.parseInt(request.getParameter("crew_Max"));
		String start_Date1 = request.getParameter("start_Date");
		String end_Date1 = request.getParameter("end_Date");
		String categoryName = request.getParameter("category_No");
		String board_Content = request.getParameter("board_Content");
				
		//가져온 String Date값을 sql Date값으로 바꿔준다. 
		java.sql.Date start_Date = java.sql.Date.valueOf(start_Date1);
		java.sql.Date end_Date = java.sql.Date.valueOf(end_Date1);
		
		
		//크루 객체생성해서 담아준다.
		Crew c = new Crew();
		
		c.setBoard_title(board_title);
		c.setCrew_Name(crew_Name);
		c.setCrew_Max(crew_Max);
		c.setStart_Date(start_Date);
		c.setEnd_Date(end_Date);
		c.setBoard_Content(board_Content);
		c.setCategory_Name(categoryName);
		c.setBoard_Content(board_Content);
		c.setUser_No(userNo);
		
	
		
	
	// 카테고리 이름을 통해서 카테고리 넘버로 분류		
		if(c.getCategory_Name().equals("런닝")) {
			c.setCategory_No(0);
		}else if(c.getCategory_Name().equals("수영")) {
			c.setCategory_No(1);
		}else if(c.getCategory_Name().equals("필라테스")) {
			c.setCategory_No(2);
		}else if(c.getCategory_Name().equals("격투기")) {
			c.setCategory_No(3);
		}else if(c.getCategory_Name().equals("댄스")) {
			c.setCategory_No(4);
		}else if(c.getCategory_Name().equals("요가")) {
			c.setCategory_No(5);
		}else if(c.getCategory_Name().equals("헬스")) {
			c.setCategory_No(6);
		}else if(c.getCategory_Name().equals("크로스핏")) {
			c.setCategory_No(7);
		}else if(c.getCategory_Name().equals("기타")) {
			c.setCategory_No(8);
		}
		
		System.out.println("나오냐?????");
		System.out.println("crew :" + c);
		
		System.out.println("origin_Name :" + origin_Name);
		System.out.println("origin_Name :" + origin_Name1);
		
		String root = request.getSession().getServletContext().getRealPath("resources"); //webapp 하위
		
		String filePath = root + "\\uploadFiles\\crew\\crewRecruitment";
		
		//파일명 변경
		
		String originFileName = origin_Name.getOriginalFilename();
		String ext = originFileName.substring(originFileName.lastIndexOf("."));
		String changeName = CommonUtils.getRandomString();
		
		String originFileName1 = origin_Name1.getOriginalFilename();
		String ext1 = originFileName1.substring(originFileName1.lastIndexOf("."));
		String changeName1 = CommonUtils.getRandomString();
		
		//파일명 바꾸기
		System.out.println("changeName" + changeName);
		System.out.println("changeName1" + changeName1);
		
		//바꾼파일명을 담아준다
		
		
		
		
		
		try {
			origin_Name.transferTo(new File(filePath + "\\" + changeName + ext));
			origin_Name1.transferTo(new File(filePath + "\\" + changeName1 + ext1));
			
			int result = 0;
			
			result = cs.insertCrew(c);
			
			return "redirect:goCrew1.shw2";
		} catch (Exception e) {
			
			//실패할시  파일을 삭제
			
			new File(filePath + "\\" + changeName + ext).delete();
			new File(filePath + "\\" + changeName1 + ext1).delete();
			
			
			e.printStackTrace();
			
			return "redirect:goCrew1.shw2";
		}
		
		

		
	

	}
}
