package com.finalProject.enjoin.crew.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.finalProject.enjoin.common.util.CommonUtils;
import com.finalProject.enjoin.crew.model.service.CrewService;
import com.finalProject.enjoin.crew.model.vo.Attachment;
import com.finalProject.enjoin.crew.model.vo.Crew;
import com.finalProject.enjoin.crew.model.vo.CrewActivityBoard;
import com.finalProject.enjoin.crew.model.vo.CrewComent;
import com.finalProject.enjoin.crew.model.vo.CrewRecruitmentBoard;
import com.finalProject.enjoin.crew.model.vo.InCrew;
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
	@RequestMapping("crewSearchList.shw2")
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
	@RequestMapping("crewRecruitmentDetails.shw2")
	public ModelAndView crewRecruitmentDetails(ModelAndView mv,HttpServletRequest request) {
		
		int board_No = Integer.parseInt(request.getParameter("board_No"));
		int user_No = Integer.parseInt(request.getParameter("user_No"));
		int crew_Id = Integer.parseInt(request.getParameter("crew_No"));
		
		
		InCrew ic = new InCrew();
		ic.setCrew_Id(crew_Id);
		
		System.out.println("board_No : " +  board_No);
		System.out.println("user_No :" + user_No);
		System.out.println("crew_No : " + crew_Id);
		
		
		//조회한값을 담아줄 hashMap
		HashMap<String,Object> hmap = new HashMap<String,Object>();
		
		//게시글 조회수 업데이트
		int result = 0;
		
		result = cs.crewRecruitmentDetailsUpdate(board_No);
		
		System.out.println("업데이트 완료되었닝????" + result);
		
		//크루게시판 조회
		List<CrewRecruitmentBoard> list = cs.crewRecruitmentBoardDetailsList(board_No);
		
		//사진 정보 조회
		List<Attachment> list1 = cs.crewAttachmentDetails(board_No);
		
		//작성자 사진 정보 조회
		Attachment userPhoto = cs.crewUserPhoto(board_No);
		
		//크루 댓글 조회
		List<CrewComent> list3 = cs.crewComentSelect(board_No);
		
		//선정된 크루원 리스트 보여주기
		List<InCrew> list4 = cs.crewInCrewY(crew_Id);
		
		System.out.println("list4 : " + list4 );
		
		mv.setViewName("crew/crewRecruitmentDetails");
		mv.addObject("list", list);
		mv.addObject("list1", list1);
		mv.addObject("list3", list3);
		mv.addObject("list4",list4);
		
		

		mv.addObject("userPhoto", userPhoto);
		
	
		return mv;
	}
		//크루 신청
		@RequestMapping("crewInCrew.shw2")
		public ModelAndView crewInCrew(ModelAndView mv,HttpServletRequest request) {
		
			int user_No = Integer.parseInt(request.getParameter("user_No"));
			int crew_Id = Integer.parseInt(request.getParameter("crew_No"));
			int board_No = Integer.parseInt(request.getParameter("board_No"));
			
			InCrew ic = new InCrew();
			
			System.out.println("user_No :" + user_No);
			System.out.println("crew_No :" + crew_Id);
			System.out.println("board_No :" + board_No);
			
			ic.setUser_No(user_No);
			ic.setCrew_Id(crew_Id);
			
			int result = 0;
			result = cs.insertInCrew(ic);
			
			//크루게시판 조회
			List<CrewRecruitmentBoard> list = cs.crewRecruitmentBoardDetailsList(board_No);
			
			//사진 정보 조회
			List<Attachment> list1 = cs.crewAttachmentDetails(board_No);
			
			//작성자 사진 정보 조회
			Attachment userPhoto = cs.crewUserPhoto(board_No);
			
			//크루 댓글 조회
			List<CrewComent> list3 = cs.crewComentSelect(board_No);
			
			//선정된 크루원 리스트 보여주기
			List<InCrew> list4 = cs.crewInCrewY(crew_Id);
			System.out.println("list4" + list4);
			
			
			
			mv.setViewName("crew/crewRecruitmentDetails");
			mv.addObject("list", list);
			mv.addObject("list1", list1);
			mv.addObject("list3",list3);
			mv.addObject("list4", list4);
			mv.addObject("userPhoto", userPhoto);
			
			
		
			
			return mv;
		}
		//크루모집 댓글
		@RequestMapping("crewComent.shw2")
		public @ResponseBody List<CrewComent> crewComent(ModelAndView mv,HttpServletRequest request,HttpServletResponse response) {
			
			ObjectMapper mapper = new ObjectMapper();
			
			//입력한 댓글내용, 대댓글체크,댓글번호 를 가져온다
			String coment_Content = request.getParameter("coment_Content");
			String checked = request.getParameter("checked11");
			int board_No = Integer.parseInt(request.getParameter("board_No"));
			int crew_Id  = Integer.parseInt(request.getParameter("crew_Id"));
			String capy = request.getParameter("capy");
			
			System.out.println("capy" + capy);
			System.out.println("crew_Id" + crew_Id);
					
					
			if(checked == null){
				checked = capy;
			}
			
			
			//로그인 유저 넘버를 가져온다
			int userNo = ((Member)(request.getSession().getAttribute("loginUser"))).getUserNo();
			
			
			CrewComent cc = new CrewComent();
			
			cc.setComent_Content(coment_Content);
			cc.setBoard_No(board_No);
			cc.setUser_No(userNo);
			
			InCrew ic = new InCrew();
			
			System.out.println("user_No :" + userNo);
			System.out.println("crew_No 나오냐????? :" + crew_Id);
			System.out.println("board_No :" + board_No);
			
			ic.setUser_No(userNo);
			ic.setCrew_Id(crew_Id);
			
			int result =0;
			
			if(checked.equals("check")){
				
				int coment_No = Integer.parseInt(request.getParameter("coment_No"));
				System.out.println("나옴??/");
				//자식 댓글 작성
				cc.setComent_No(coment_No);	
				int result2 = cs.crewAddchildComent(cc);
				
			}else{
				System.out.println("들어오긴하냐?");
				//일반 댓글 작성
				int result1 = cs.crewAddComent(cc);
				
			}
			
			
			//크루게시판 조회
			List<CrewRecruitmentBoard> list = cs.crewRecruitmentBoardDetailsList(board_No);
			
			//사진 정보 조회
			List<Attachment> list1 = cs.crewAttachmentDetails(board_No);
			
			//작성자 사진 정보 조회
			Attachment userPhoto = cs.crewUserPhoto(userNo);
			
			//크루 댓글 조회
			List<CrewComent> list3 = cs.crewComentSelect(board_No);
			
			System.out.println("list3 : " + list3);
			//선정된 크루원 리스트 보여주기
			List<InCrew> list4 = cs.crewInCrewY(crew_Id);
			
			System.out.println("list4" + list4);
			
			
		
			HashMap<String,Object> map = new HashMap<String,Object>();
			
			//mv.addObject("list", list);
			//mv.addObject("list1", list1);
			mv.addObject("list3", list3);
			//mv.addObject("list4", list4);
			//mv.addObject("userPhoto", userPhoto);
			
			map.put("list3", list3);
			
			System.out.println("list3 : " + list3);
			
			//mv.setViewName("jsonView");
			//mv.setViewName("crew/crewRecruitmentDetails");
			
			/*try {
				response.getWriter().println(mapper.writeValueAsString(map)); //json문자열로 바꿔줌
				
			} catch (JsonGenerationException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (JsonMappingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}*/
			
			return list3;
			
		}
		//크루활동내역폼
		@RequestMapping("crewActivity.shw2")
		public ModelAndView showCrewActivity(ModelAndView mv,HttpServletRequest request) {
				
			//로그인 유저 넘버를 가져온다
			int userNo = ((Member)(request.getSession().getAttribute("loginUser"))).getUserNo();
			
			//크루활동내역폼에 크루에대한 정보를 담아서 보내기 위해 보낸다.
			
			
			//한 회원이 크루를 여러개 만들수 있기때문에 list로 보낸다.
			List<Crew>list = cs.crewInformation(userNo);
			
			
			System.out.println("list 잘나오냠? " + list);
			
			
			
			mv.setViewName("crew/crewActivity");
			mv.addObject("list", list);
			
			return mv;
		}
		//크루활동게시판 인서트
		@RequestMapping("crewActivityInsert.shw2")
		public String insertCrewMember(Model model,HttpServletRequest request,
				@RequestParam(name="act_Name1",  required=false) MultipartFile act_Name1,
				@RequestParam(name="act_Name2",  required=false) MultipartFile act_Name2,
				@RequestParam(name="act_Name3",  required=false) MultipartFile act_Name3,
				@RequestParam(name="act_Name4",  required=false) MultipartFile act_Name4){
			
				
				int crew_No = Integer.parseInt(request.getParameter("crew_Name"));
				String board_Title = request.getParameter("board_Title");
				String crew_Area = request.getParameter("crew_Area");
				int crew_Count = Integer.parseInt(request.getParameter("crew_Count"));
				String start_Date1 = request.getParameter("start_Date");
				String board_Content = request.getParameter("board_Content");
				
				java.sql.Date start_Date = java.sql.Date.valueOf(start_Date1);
				
				//로그인 유저 넘버를 가져온다
				int userNo = ((Member)(request.getSession().getAttribute("loginUser"))).getUserNo();
				
				CrewActivityBoard cab  = new CrewActivityBoard();
				
				cab.setCrew_No(crew_No);
				cab.setBoard_Title(board_Title);
				cab.setCrew_Area(crew_Area);
				cab.setCrew_Count(crew_Count);
				cab.setStart_Date(start_Date);
				cab.setBoard_Content(board_Content);
				cab.setUser_No(userNo);
				
				//파일 루트 지정
				String root = request.getSession().getServletContext().getRealPath("resources");
				//파일경로 저장
				String filePath = root + "\\uploadFiles\\crew\\crewActivity";
				
				//크루활동 사진명 변경
				
			
				//사진1
				String originFileName = act_Name1.getOriginalFilename();
				String ext = originFileName.substring(originFileName.lastIndexOf("."));
				String changeName = CommonUtils.getRandomString();
				long fileSize1 = act_Name1.getSize();
				String fileSize = String.valueOf(fileSize1);
				
				//사진2
				String originFileName1 = act_Name2.getOriginalFilename();
				String ext1 = originFileName1.substring(originFileName1.lastIndexOf("."));
				String changeName1 = CommonUtils.getRandomString();
				long fileSize2 = act_Name2.getSize();
				String fileSize3 = String.valueOf(fileSize2);
				
				//사진3
				String originFileName2 = act_Name3.getOriginalFilename();
				String ext3 = originFileName2.substring(originFileName2.lastIndexOf("."));
				String changeName2 = CommonUtils.getRandomString();
				long fileSize4 = act_Name3.getSize();
				String fileSize5 = String.valueOf(fileSize4);
				
				//사진4
				String originFileName3 = act_Name4.getOriginalFilename();
				String ext4 = originFileName3.substring(originFileName3.lastIndexOf("."));
				String changeName3 = CommonUtils.getRandomString();
				long fileSize6 = act_Name4.getSize();
				String fileSize7 = String.valueOf(fileSize6);
				
				
				//크루 활동 사진을 담기위한 객체선언
				Attachment at = new Attachment();
			
				String origin_FileNames = String.valueOf(originFileName);
				String changeNameExt = changeName + ext;
				
				at.setOrigin_Name(originFileName);
				at.setFile_Ext(ext);
				at.setUpload_Name(changeNameExt);
				at.setFile_size(fileSize);
				
				//크루 활동 사진2
				
				Attachment at1 = new Attachment();
				
				String origin_FileNames1 = String.valueOf(originFileName1);
				String changeNameExt1 = changeName1 + ext1;
				
				at1.setOrigin_Name(originFileName1);
				at1.setFile_Ext(ext1);
				at1.setUpload_Name(changeNameExt1);
				at1.setFile_size(fileSize3);
				
				//크루 활동 사진3
				
				Attachment at3 = new Attachment();
				
				String origin_FileNames3 = String.valueOf(originFileName2);
				String changeNameExt2 = changeName2 + ext3;
				
				at3.setOrigin_Name(originFileName2);
				at3.setFile_Ext(ext3);
				at3.setUpload_Name(changeNameExt2);
				at3.setFile_size(fileSize5);
				
				//크루 활동 사진 4
				
				Attachment at4 = new Attachment();
				
				String origin_FileNames4 = String.valueOf(originFileName3);
				String changeNameExt3 = changeName3 + ext4;
				
				at4.setOrigin_Name(originFileName2);
				at4.setFile_Ext(ext4);
				at4.setUpload_Name(changeNameExt3);
				at4.setFile_size(fileSize7);
				
				
				try {
					//저장할 경로명에 바뀐 파일이름 + 확장자 추가해서 넣어줌
					act_Name1.transferTo(new File(filePath + "\\" + changeName + ext));
					act_Name2.transferTo(new File(filePath + "\\" + changeName1 + ext1));
					act_Name3.transferTo(new File(filePath + "\\" + changeName2 + ext3));
					act_Name4.transferTo(new File(filePath + "\\" + changeName3 + ext4));
					
					int result = cs.insertCrewActivity(cab,at,at1,at3,at4);
					
				} catch (Exception e) {
					//실패할시 파일을 삭제
					new File(filePath + "\\" + changeName + ext).delete();
					new File(filePath + "\\" + changeName1 + ext1).delete();
					new File(filePath + "\\" + changeName2 + ext3).delete();
					new File(filePath + "\\" + changeName3 + ext4).delete();
				}
						
		 	return "redirect:crewActivityBoard.shw2";
		}
		//크루활동 게시판연결
		@RequestMapping("crewActivityBoard.shw2")
		public ModelAndView showCrewActivityBoard(ModelAndView mv,HttpServletRequest request) {

			List<CrewActivityBoard> list = cs.crewActivityBoardList();
			
			mv.setViewName("crew/crewActivityBoard");
			mv.addObject("list", list);
			
			return mv;	
		}
		//크루활동게시판상세보기
		@RequestMapping("crewActivityDetails.shw2")
		public ModelAndView showCrewActivityDetails(ModelAndView mv,HttpServletRequest request) {
			
			int board_No = Integer.parseInt(request.getParameter("board_No"));
			int crew_No = Integer.parseInt(request.getParameter("crew_No"));
			
			//조회수증가
			int result = cs.updateBoardCount(board_No);
			
			//상세내용 조회
			List<CrewActivityBoard> list = cs.crewActivityBoardDetailList(board_No);
			
			//상새내용 사진 조회
			List<Attachment> list1 = cs.crewActivityBoardDetailPhoto(board_No);
			
			//글쓴이 사진이랑 정보 나오게 조회
			Attachment ac = cs.userPhotos(board_No);
			
			//크루이름이랑 사진 조회
			Attachment ac1 = cs.crewPhotos(crew_No);
			
			int crew_Id = crew_No;
			//크루원 리스트 보여주기
			List<InCrew> list2 = cs.crewInCrewY(crew_Id);
			
			//댓글 리스트 불러오기
			List<CrewComent> list3 = cs.crewComentSelect(board_No);
			
			
			HashMap<String,Object> map = new HashMap<String,Object>();
			
			map.put("list", list);
			map.put("list1", list1);
			map.put("list2", list2);
			map.put("list3", list3);
			
			
			
			
			
			
			mv.setViewName("crew/crewActivityDetails");
			mv.addObject("map", map);
			mv.addObject("ac",ac);
			mv.addObject("ac1",ac1);
			
			return mv;
		}
		//크루활동 댓글
				@RequestMapping("crewComent1.shw2")
				public ModelAndView crewComent1(ModelAndView mv,HttpServletRequest request) {
					
					//입력한 댓글내용, 대댓글체크,댓글번호 를 가져온다
					String coment_Content = request.getParameter("coment_Content");
					String checked = request.getParameter("checked11");
					int board_No = Integer.parseInt(request.getParameter("board_No"));
					int crew_Id  = Integer.parseInt(request.getParameter("crew_Id"));
					String capy = request.getParameter("capy");
					int crew_No = crew_Id;
					
					System.out.println("capy" + capy);
					System.out.println("crew_Id" + crew_Id);
							
							
					if(checked == null){
						checked = capy;
					}
					
					
					//로그인 유저 넘버를 가져온다
					int userNo = ((Member)(request.getSession().getAttribute("loginUser"))).getUserNo();
					
					
					CrewComent cc = new CrewComent();
					
					cc.setComent_Content(coment_Content);
					cc.setBoard_No(board_No);
					cc.setUser_No(userNo);
					
					InCrew ic = new InCrew();
					
					System.out.println("user_No :" + userNo);
					System.out.println("crew_No 나오냐????? :" + crew_Id);
					System.out.println("board_No :" + board_No);
					
					ic.setUser_No(userNo);
					ic.setCrew_Id(crew_Id);
					
					int result =0;
					
					if(checked.equals("check")){
						
						int coment_No = Integer.parseInt(request.getParameter("coment_No"));
						System.out.println("나옴??/");
						//자식 댓글 작성
						cc.setComent_No(coment_No);	
						int result2 = cs.crewAddchildComent(cc);
						
					}else{
						System.out.println("들어오긴하냐?");
						//일반 댓글 작성
						int result1 = cs.crewAddComent(cc);
						
					}
					
					//상세내용 조회
					List<CrewActivityBoard> list = cs.crewActivityBoardDetailList(board_No);
					
					//상새내용 사진 조회
					List<Attachment> list1 = cs.crewActivityBoardDetailPhoto(board_No);
					
					//글쓴이 사진이랑 정보 나오게 조회
					Attachment ac = cs.userPhotos(board_No);
					
					//크루이름이랑 사진 조회
					Attachment ac1 = cs.crewPhotos(crew_No);
					
					//크루원 리스트 보여주기
					List<InCrew> list2 = cs.crewInCrewY(crew_Id);
					
					//댓글 리스트 불러오기
					List<CrewComent> list3 = cs.crewAjaxComentSelect();
					
					
					
					
				
					HashMap<String,Object> map = new HashMap<String,Object>();
					
					map.put("list", list);
					map.put("list1", list1);
					map.put("list2", list2);
					map.put("list3", list3);
					
					
					
					mv.setViewName("crew/crewActivityDetails");
					mv.addObject("map", map);
					mv.addObject("ac",ac);
					mv.addObject("ac1",ac1);
					
					return mv;
				}
		
		
}
