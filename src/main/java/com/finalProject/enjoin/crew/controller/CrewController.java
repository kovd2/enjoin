package com.finalProject.enjoin.crew.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.finalProject.enjoin.common.util.CommonUtils;
import com.finalProject.enjoin.crew.model.service.CrewService;
import com.finalProject.enjoin.crew.model.vo.Attachment;
import com.finalProject.enjoin.crew.model.vo.Crew;
import com.finalProject.enjoin.crew.model.vo.CrewRecruitmentBoard;
import com.finalProject.enjoin.member.model.vo.Member;
import com.finalProject.enjoin.myPage.model.vo.PageInfo;
import com.finalProject.enjoin.myPage.model.vo.Pagination;


@SessionAttributes("loginUser")
@Controller
public class CrewController {
	@Autowired
	private CrewService cs;


	//크루모집 게시판 연결
	@RequestMapping("crewRecruitmentBoard.shw2")
	public ModelAndView showCrewRecruitmentBoard(ModelAndView mv,HttpServletRequest request) {
		int currentPage = 1;
		
		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		int listCount = cs.getListCount();
		System.out.println("listCount : " + listCount);
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		List<CrewRecruitmentBoard> list = cs.crewRecruitmentBoardList(pi);
		
		mv.setViewName("crew/crewRecruitmentBoard");
		mv.addObject("list", list);
		mv.addObject("pi",pi);
		return mv;
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
	//크루 카테고리 검색
	@RequestMapping("crewCategorySelectBoard.shw2")
	public ModelAndView crewCategorySelectBoard(ModelAndView mv,HttpServletRequest request) {
		
		String categoryName = request.getParameter("categoryName");
		int currentPage = 1;
	
		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		int listCount = cs.getCrewCategoryListCount(categoryName);
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		List<CrewRecruitmentBoard> list = cs.crewCategoryRecruitmentBoardList(pi,categoryName);
		
		mv.setViewName("crew/crewRecruitmentBoard");
		mv.addObject("list", list);
		mv.addObject("pi",pi);
		
		return mv;
	}
	//크루 제목 , 작성자 검색
	@RequestMapping("crewSearchList.sh2")
	public ModelAndView crewSearchListBoard(ModelAndView mv,HttpServletRequest request) {
		
		String option = request.getParameter("option");
		String searchList = request.getParameter("searchTitle");
		int currentPage = 1;
		
		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
				
		if(option.equals("제목")) {
			
			String board_Title = searchList;
			
			int listCount = cs.getCrewTitleListCount(board_Title);
			PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
			List<CrewRecruitmentBoard> list = cs.crewTitleRecruitmentBoardList(pi,board_Title);
			mv.addObject("pi",pi);
			mv.addObject("list", list);
	
		}else if(option.equals("지역")){
			String crew_Area = searchList;
			
			int listCount = cs.getCrewAreaListCount(crew_Area);
			PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
			List<CrewRecruitmentBoard> list = cs.crewAreaRecruitmentBoardList(pi,crew_Area);
			mv.addObject("pi",pi);
			mv.addObject("list", list);
					
		}
	
	
		mv.setViewName("crew/crewRecruitmentBoard");
		
		
		return mv;
	}



	@RequestMapping(value="crewInsert.shw2")
	public String insertCrewMember(Model model,/*Crew c,*/HttpServletRequest request,
		@RequestParam(name="origin_Name",  required=false) MultipartFile origin_Name,
		@RequestParam(name="origin_Name1",  required=false) MultipartFile origin_Name1){
		
		//로그인 유저 넘버를 가져온다
		int userNo = ((Member)(request.getSession().getAttribute("loginUser"))).getUserNo();
		
		
		//가져온 데이터를 파라미터를 각각꺼내준다. 이유는 모르겠지만 객체설정해서 바로담으려하면 오류뜸
		String board_title = request.getParameter("board_title");
		String crew_Name = request.getParameter("crew_Name");
		int crew_Max = Integer.parseInt(request.getParameter("crew_Max"));
		String start_Date1 = request.getParameter("start_Date");
		String end_Date1 = request.getParameter("end_Date");
		String categoryName = request.getParameter("category_No");
		String board_Content = request.getParameter("board_Content");
		String crew_Area = request.getParameter("crew_Address");
		
		
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
		

		//크루모집게시판 객체 생성
		CrewRecruitmentBoard crb = new CrewRecruitmentBoard();
				
		crb.setBoard_Title(board_title);
		crb.setBoard_Content(board_Content);
		crb.setCrew_Area(crew_Area);
		crb.setRecruit_Max(crew_Max);
		crb.setRecruit_Start(start_Date);
		crb.setRecruit_End(end_Date);
		crb.setUser_No(userNo);
			
		
		// 카테고리 이름을 통해서 카테고리 넘버로 분류 크루객체,크루모집게시판객체에 넣어준다	
		if(c.getCategory_Name().equals("런닝")) {
			c.setCategory_No(0);
			crb.setCategory_No(0);
		}else if(c.getCategory_Name().equals("수영")) {
			c.setCategory_No(1);
			crb.setCategory_No(1);
		}else if(c.getCategory_Name().equals("필라테스")) {
			c.setCategory_No(2);
			crb.setCategory_No(2);
		}else if(c.getCategory_Name().equals("격투기")) {
			c.setCategory_No(3);
			crb.setCategory_No(3);
		}else if(c.getCategory_Name().equals("댄스")) {
			c.setCategory_No(4);
			crb.setCategory_No(4);
		}else if(c.getCategory_Name().equals("요가")) {
			c.setCategory_No(5);
			crb.setCategory_No(5);
		}else if(c.getCategory_Name().equals("헬스")) {
			c.setCategory_No(6);
			crb.setCategory_No(6);
		}else if(c.getCategory_Name().equals("크로스핏")) {
			c.setCategory_No(7);
			crb.setCategory_No(7);
		}else if(c.getCategory_Name().equals("기타")) {
			c.setCategory_No(8);
			crb.setCategory_No(8);
		}
		
		System.out.println("CrewBoard : " + crb);
		
				
		//파일 루트 지정
		String root = request.getSession().getServletContext().getRealPath("resources"); //webapp 하위
		
		//파일 저장 경로 저장
		String filePath = root + "\\uploadFiles\\crew\\crewRecruitment";
		
		//크루 파일명 변경	
		String originFileName = origin_Name.getOriginalFilename();
		String ext = originFileName.substring(originFileName.lastIndexOf("."));
		String changeName = CommonUtils.getRandomString();
		long fileSize1 = origin_Name.getSize();
		String fileSize = String.valueOf(fileSize1);
		
		//크루이용할예정 파일사진 변경
		String originFileName1 = origin_Name1.getOriginalFilename();
		String ext1 = originFileName1.substring(originFileName1.lastIndexOf("."));
		String changeName1 = CommonUtils.getRandomString();
		long fileSize3 = origin_Name1.getSize();
		String fileSize2 = String.valueOf(fileSize3);
		
		//파일명 바꾸기
		System.out.println("changeName" + changeName);
		System.out.println("changeName1" + changeName1);
		
		
		//크루에 넣을 사진
		
		
		
		//크루 로고 사진을 담기위한 객체선언
		Attachment at = new Attachment();
		
		
		String origin_FileNames = String.valueOf(originFileName);
		String changeNameExt = changeName + ext;
		
		at.setOrigin_Name(originFileName);
		at.setFile_Ext(ext);
		at.setUpload_Name(changeNameExt);
		at.setFile_size(fileSize);
		
		System.out.println("at : " + at);
		
		//크루 활동 예정 사진을 담기위한 객체선언
		Attachment at1 = new Attachment();
		
		String origin_FileNames1 = String.valueOf(originFileName1);
		String changeNameExt1 = changeName1 + ext1;
		
		at1.setOrigin_Name(originFileName1);
		at1.setFile_Ext(ext1);
		at1.setUpload_Name(changeNameExt1);
		at1.setFile_size(fileSize2);
		
	
		
		
		try {
			//저장할 경로명에 바뀐파일이름 + 확장자 추가해서 넣어준다.
			origin_Name.transferTo(new File(filePath + "\\" + changeName + ext));
			origin_Name1.transferTo(new File(filePath + "\\" + changeName1 + ext1));
			
			int result = 0;

			result = cs.insertCrew(c,at,at1,crb);
			
			return "redirect:crewRecruitmentBoard.shw2";
		} catch (Exception e) {
			
			//실패할시  파일을 삭제
			
			new File(filePath + "\\" + changeName + ext).delete();
			new File(filePath + "\\" + changeName1 + ext1).delete();
			
			
			e.printStackTrace();
			
			return "redirect:crewRecruitmentBoard.shw2";
		}
	}
	@RequestMapping("crewRecruitmentDetails")
	public ModelAndView crewRecruitmentDetails(ModelAndView mv,HttpServletRequest request) {
		
		int board_No = Integer.parseInt(request.getParameter("board_No"));
		int user_No = Integer.parseInt(request.getParameter("user_No"));
		
		
		System.out.println("board_No : " +  board_No);
		System.out.println("user_No :" + user_No);
		
		
		//조회한값을 담아줄 hashMap
		HashMap<String,Object> hmap = new HashMap<String,Object>();
		
		//크루게시판 조회
		List<CrewRecruitmentBoard> list = cs.crewRecruitmentBoardDetailsList(board_No);
		
		//사진 정보 조회
		List<Attachment> list1 = cs.crewAttachmentDetails(board_No);
		
		//작성자 사진 정보 조회
		Attachment userPhoto = cs.crewUserPhoto(user_No);
		
		
		
		
		
		
		mv.setViewName("crew/crewRecruitmentDetails");
		mv.addObject("list", list);
		mv.addObject("list1", list1);
		mv.addObject("userPhoto", userPhoto);
		
		
		
		return mv;
	}
}
