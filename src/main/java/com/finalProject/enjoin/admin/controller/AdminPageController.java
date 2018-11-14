package com.finalProject.enjoin.admin.controller;

import java.sql.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.finalProject.enjoin.admin.model.service.AdminService;
import com.finalProject.enjoin.admin.model.vo.AdminInformBoard;
import com.finalProject.enjoin.crew.model.vo.Crew;
import com.finalProject.enjoin.crew.model.vo.CrewActivityBoard;
import com.finalProject.enjoin.crew.model.vo.CrewRecruitmentBoard;
import com.finalProject.enjoin.informBoard.model.vo.InformBoard;
import com.finalProject.enjoin.member.model.vo.Member;
import com.finalProject.enjoin.myPage.model.vo.PageInfo;
import com.finalProject.enjoin.myPage.model.vo.Pagination;


@SessionAttributes("loginUser")
@Controller
public class AdminPageController {
	@Autowired
	private AdminService as;
	
	//관리자페이지 홈
	@RequestMapping("adminSideBar.hh")
	public String adminSideBar() {
		
		return "common/admin/adminSideBar";
	}
	
	//관리자 회원 조회
	
	@RequestMapping("adminMember.shw")
	public ModelAndView showAdminMember(ModelAndView mv,HttpServletRequest request) {
		
		//일반 회원 리스트 카운트
		int currentPage = 1;
		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
			
		}
		int listCount = as.getListCount();
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		//일반 회원 정보 조회
		List<Member> list = as.memberSelect(pi);
		
		//기업 회원 리스트 카운트 
		
		int currentPage1 = 1;
		
		if(request.getParameter("curentPage1") != null) {
			currentPage1 = Integer.parseInt(request.getParameter("currentPage1"));
		}
		
		int listCount1 = as.getListCount1();
		PageInfo pi1 = Pagination.getPageInfo(currentPage1, listCount1);
		
		//기업 회원 정보 조회
		List<Member> list1 = as.companyMemberSelect(pi1);
		
		
		HashMap<String,Object> map = new HashMap<String,Object>();
		
		map.put("list", list);
		map.put("list1", list1);
		
		
		mv.setViewName("admin/adminMemberTable");
		mv.addObject("map", map);
		mv.addObject("pi",pi);
		mv.addObject("pi1", pi1);
		
		return mv;	
	}
	
	//유저 검색하기
	@RequestMapping("memberSearchList.shw")
	public ModelAndView MemberSearchList(ModelAndView mv,HttpServletRequest request){
		
		String option = request.getParameter("option");
		String searchList = request.getParameter("searchList");
		
		System.out.println("option" + option);
		System.out.println("searchList" + searchList);
		
		if(option.equals("번호")) {
			//회원 번호로 조회
			int userNo = Integer.parseInt(searchList);
			List<Member> list = as.userNoSelect(userNo);
			
			
			HashMap<String,Object> map = new HashMap<String,Object>();
			map.put("list", list);
			mv.addObject("map",map);
			
		}else if(option.equals("회원아이디")) {
			//회원 아이디로 조회
			String userId = searchList;
			List<Member> list = as.userIdSelect(userId);
			
			HashMap<String,Object> map = new HashMap<String,Object>();
			map.put("list", list);
			mv.addObject("map",map);
			
		}else if(option.equals("이름")) {
			//회원 이름을 통한 조회
			String userName = searchList;
			int currentPage = 1;
			
			if(request.getParameter("currentPage") != null) {
				currentPage = Integer.parseInt(request.getParameter("currentPage"));
			}
			
			int listCount = as.getMemberNameListCount(userName);
			
			System.out.println("listCount" + listCount);
			
			PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
			
			List<Member> list = as.userNameSelect(userName,pi);
			
			HashMap<String,Object> map = new HashMap<String,Object>();
			map.put("list", list);
			mv.addObject("map",map);
			mv.addObject("pi", pi);
			
		}else if(option.equals("연락처")) {
			//회원 번호를 통한 조회
			String phone = searchList;
			
			List<Member> list = as.userPhoneSelect(phone);
			
			HashMap<String,Object> map = new HashMap<String,Object>();
			map.put("list", list);
			mv.addObject("map",map);
			
		}else if(option.equals("이메일")) {
			//이메일을 통한 조회
			String email = searchList;
			List<Member> list = as.userEmailSelect(email);
			
			HashMap<String,Object> map = new HashMap<String,Object>();
			map.put("list", list);
			mv.addObject("map",map);
		
		}
			
		mv.setViewName("admin/adminMemberTable");
		
		return mv;
	}
	//회원 재재 스테이터스 'N' 값으로 돌리기
	@RequestMapping(value="statusMember.shw")
	public String updatestatusMember(Model model,HttpServletRequest request) {
		
		int userNo = Integer.parseInt(request.getParameter("userNo"));		
		int result  = as.updateStatusMember(userNo);
		
		return "redirect:adminMember.shw";
	}
	//기업회원 검색기능
	@RequestMapping("companyMemberSearchList.shw")
	public ModelAndView companyMemberSearchList(ModelAndView mv,HttpServletRequest request){
		
		String option = request.getParameter("option");
		String searchList = request.getParameter("searchList");
		
		if(option.equals("상호명")) {
			//상호명을 통한 검색
			String copName = searchList;
			List<Member> list1 = as.copNameSelect(copName);
			
			HashMap<String,Object> map = new HashMap<String,Object>();
			
			map.put("list1", list1);
			mv.addObject("map", map);
			
			
		}else if(option.equals("아이디")) {
			//아이디를 통한 검색
			String userId = searchList;
			
			List<Member>list1 = as.copUserIdSelect(userId);
			
			HashMap<String,Object> map = new HashMap<String,Object>();
			map.put("list1", list1);
			mv.addObject("map", map);
		
		}else if(option.equals("등록번호")) {
			
			//등록번호를 통한 검색
			String copNo = searchList;
			
			List<Member>list1 = as.copNoSelect(copNo);
			
			HashMap<String,Object> map = new HashMap<String,Object>();
			map.put("list1", list1);
			mv.addObject("map", map);
			
		}else if(option.equals("이메일")) {
			
			//기업 담당자 이메일을 통한 조회
			String managerEmail = searchList;
			List<Member>list1 = as.managerEmailSelect(managerEmail);
			
			HashMap<String,Object> map = new HashMap<String,Object>();
			map.put("list1", list1);
			mv.addObject("map", map);
		}
		mv.setViewName("admin/adminMemberTable");
		
		return mv;
	}
	//기업회원 블랙 처리
	@RequestMapping(value="copStatusMember.shw")
	public String updateCopStatusMember(Model model,HttpServletRequest request) {
		
		int userNo = Integer.parseInt(request.getParameter("userNo"));
		int result  = as.updateCopStatusMember(userNo);
		
		return "redirect:adminMember.shw";
	}
	
	//블랙회원 리스트 조회
	@RequestMapping("adminBlackMember.shw")
	public ModelAndView adminBlackMember(ModelAndView mv,HttpServletRequest request) {
		
		//블랙일반 회원 리스트 카운트
		int currentPage = 1;
		
		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
			
		}
		int listCount = as.getBlackListCount();
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		//블랙 일반회원 정보 조회
		List<Member> list = as.selectBlackMemberList(pi);
		
		System.out.println("list");
		
		//블랙 기업회원 정보 조회
		
		int currentPage1 = 1;
		
		if(request.getParameter("curentPage1") != null) {
			currentPage1 = Integer.parseInt(request.getParameter("currentPage1"));
		}
		//블랙 기업 리스트 조회
		int listCount1 = as.getBlackListCount1();
		
		PageInfo pi1 = Pagination.getPageInfo(currentPage1, listCount1);
		
		//기업 회원 정보 조회
		List<Member> list1 = as.companyBlackMemberSelect(pi1);
		
		HashMap<String,Object> map = new HashMap<String,Object>();
		
		map.put("list", list);
		map.put("list1", list1);
		
		mv.addObject("map", map);
		mv.addObject("pi",pi);
		mv.addObject("pi1", pi1);
		
		mv.setViewName("admin/adminBlackMemberTable");
		
		return mv;
	}
	//일반회원 블랙회원 해제처리
	@RequestMapping(value="statusBlackMember.shw")
	public String updateStatusBlackMember(Model model,HttpServletRequest request) {
		
		int userNo = Integer.parseInt(request.getParameter("userNo"));
		int result  = as.updateStatusBlackMember(userNo);
		
		return "redirect:adminBlackMember.shw";
	}
	
	//기업회원 블랙회원 해제처리
	@RequestMapping(value="copStatusBlackMember.shw")
	public String updateCopStatusBlackMember(Model model,HttpServletRequest request) {
		
		int userNo = Integer.parseInt(request.getParameter("userNo"));
		int result  = as.updateCopStatusBlackMember(userNo);
		
		return "redirect:adminBlackMember.shw";
	}
	//블랙회원 검색
	@RequestMapping("memberBlackSearchList.shw")
	public ModelAndView memberBlackSearchList(ModelAndView mv , HttpServletRequest request) {
		
		String option = request.getParameter("option");
		String searchList = request.getParameter("searchList");
		
		if(option.equals("회원아이디")) {
			//회원 아이디로 조회
			String userId = searchList;
			List<Member> list = as.userBlackIdSelect(userId);
			
			HashMap<String,Object> map = new HashMap<String,Object>();
			map.put("list", list);
			mv.addObject("map",map);
			
		}else if(option.equals("이름")) {
			//회원 이름을 통한 조회
			String userName = searchList;
			int currentPage = 1;
			
			if(request.getParameter("currentPage") != null) {
				currentPage = Integer.parseInt(request.getParameter("currentPage"));
			}
			
			int listCount = as.getBlackMemberNameListCount(userName);
			
			
			PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
			
			List<Member> list = as.userBlackNameSelect(userName,pi);
			
			HashMap<String,Object> map = new HashMap<String,Object>();
			map.put("list", list);
			mv.addObject("map",map);
			mv.addObject("pi", pi);
			
		}
		
		
		mv.setViewName("admin/adminBlackMemberTable");
		
		return mv;
	}
		//블랙기업회원 검색
		@RequestMapping("companyBlackMemberSearchList.shw")
		public ModelAndView companyBlackMemberSearchList(ModelAndView mv , HttpServletRequest request) {
			
			String option = request.getParameter("option");
			String searchList = request.getParameter("searchList");
			
			if(option.equals("상호명")) {
				//상호명을 통한 검색
				String copName = searchList;
				List<Member> list1 = as.copNameBlackSelect(copName);
				
				HashMap<String,Object> map = new HashMap<String,Object>();
				
				map.put("list1", list1);
				mv.addObject("map", map);
				
				
				
			}else if(option.equals("아이디")){
				//아이디를 통한 검색
				String userId = searchList;
				List<Member>list1 = as.blackCopUserIdSelect(userId);
				
				HashMap<String,Object> map = new HashMap<String,Object>();
				map.put("list1", list1);
				mv.addObject("map", map);
				
				
			}
			
			
			mv.setViewName("admin/adminBlackMemberTable");
			
			return mv;
		}
		@RequestMapping("adminCrew.shw")
		public ModelAndView adminCrew(ModelAndView mv , HttpServletRequest request){
			
			//크루 리스트 카운트
			int currentPage = 1;
			
			if(request.getParameter("currentPage") != null) {
				currentPage = Integer.parseInt(request.getParameter("currentPage"));
				
			}
			int listCount = as.getCrewListCount();
			System.out.println("크루 리스트 : " + listCount);
			
			PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
			List<Crew> list = as.crewListSelect(pi);
			
			System.out.println("list : " + list);
			
			
			//블랙크루 리스트 카운트 
			int currentPage1 = 1;
			
			if(request.getParameter("curentPage1") != null) {
				currentPage1 = Integer.parseInt(request.getParameter("currentPage1"));
			}
			
			int listCount1 = as.getCrewBlackListCount1();
			System.out.println("블랙크루 리스트: " + listCount1);
			
			PageInfo pi1 = Pagination.getPageInfo(currentPage1, listCount1);
			//블랙 크루 리스트 조회
			List<Crew> list1 = as.blackCrewListSelect(pi1);
			
			HashMap<String,Object> map = new HashMap<String,Object>();
			
			map.put("list", list);
			map.put("list1", list1);
			
			mv.addObject("map", map);
			mv.addObject("pi",pi);
			mv.addObject("pi1",pi1);
				
			mv.setViewName("admin/adminCrewTable");
			return mv;
		}
		@RequestMapping(value="statusBlackCrew.shw")
		public String updateStatusBlackCrew(Model model,HttpServletRequest request) {
			//상태 값을 블랙으로 만듬
			int crew_Id = Integer.parseInt(request.getParameter("crew_Id"));
			
			int result = as.updateStatusBlackCrew(crew_Id);
			
			
			return "redirect:adminCrew.shw";
		}
		@RequestMapping(value="StatusCrew.shw")
		public String updateStatusCrew(Model model,HttpServletRequest request) {
			//상태 값을 블랙으로 만듬
			int crew_Id = Integer.parseInt(request.getParameter("crew_Id"));
			
			int result = as.updateStatusCrew(crew_Id);
			
			
			return "redirect:adminCrew.shw";
		}
		@RequestMapping("crewSearchList.shw")
		public ModelAndView crewSearchList(ModelAndView mv , HttpServletRequest request){
			
			String option = request.getParameter("option");
			String searchList = request.getParameter("searchList");
			
			
			if(option.equals("크루명")) {
				String crew_Name = searchList;
				
				List<Crew> list = as.crewNameSelect(crew_Name);
				
				HashMap<String,Object> map = new HashMap<String,Object>();
				map.put("list", list);
				
				mv.addObject("map", map);
				
			}else if(option.equals("크루장")) {
				String user_Id = searchList;
				
				List<Crew> list = as.crewBoassSelect(user_Id);
				
				HashMap<String,Object> map = new HashMap<String,Object>();
				map.put("list", list);
				
				mv.addObject("map", map);
			}
			mv.setViewName("admin/adminCrewTable");

			
			return mv;
		}
		@RequestMapping("crewBlackSearchList.shw")
		public ModelAndView crewBlackSearchList(ModelAndView mv , HttpServletRequest request){
		
			String option = request.getParameter("option");
			String searchList =request.getParameter("searchList");
					
			if(option.equals("크루명")) {
				String crew_Name = searchList;
				
				List<Crew> list1 = as.crewBlackName(crew_Name);
				
				HashMap<String,Object> map = new HashMap<String,Object>();
				map.put("list1", list1);
				
				mv.addObject("map", map);
				
			}else if(option.equals("크루장")) {
				String user_Id = searchList;
				
				List<Crew> list1 = as.crewBlackUser(user_Id);
				
				HashMap<String,Object> map = new HashMap<String,Object>();
				map.put("list1", list1);
				
				mv.addObject("map", map);
			}
	
			mv.setViewName("admin/adminCrewTable");
			
			return mv;

		}
		//관리자 크루 모집 게시판
		@RequestMapping("adminCrewRecruitment.shw")
		public ModelAndView adminCrewRecruitment(ModelAndView mv , HttpServletRequest request){
			
			//크루 모집게시판 리스트 카운트
			int currentPage = 1;
			
			if(request.getParameter("currentPage") != null) {
				currentPage = Integer.parseInt(request.getParameter("currentPage"));
				
			}
			int listCount = as.getCrtListCount();
			
			PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
			
			List<CrewRecruitmentBoard>list = as.selectCrewRecruitmentBoardList(pi);
			
			HashMap<String,Object> map = new HashMap<String,Object>();
			
			map.put("list", list);
			
			
			mv.addObject("map", map);
			mv.addObject("pi", pi);
			
			
			mv.setViewName("admin/adminCrewRecruitment");
			
			
			return mv;
		}
		//게시글 삭제 삭제여부 'Y' 값으로 만들기
		@RequestMapping(value="adminCrewRecruitmentStatus.shw")
		public String adminCrewRecruitmentStatus(Model model,HttpServletRequest request) {
			
			int board_No = Integer.parseInt(request.getParameter("board_No"));
			int result = as.updateAdminCrewRecruitmentStatus(board_No);
			
			return "redirect:adminCrewRecruitment.shw";
				
		}
		//크루모집 게시판 검색을 통한 게시글 검색
		@RequestMapping("adminCrcSearchList.shw")
		public ModelAndView adminCrcSearchList(ModelAndView mv,HttpServletRequest request) {
			
			String option = request.getParameter("option");
			String searchList = request.getParameter("searchList");
			
			if(option.equals("제목")){
				String board_Title = searchList;
				
				List<CrewRecruitmentBoard> list = as.selectCrewRecruitmentBoardTitle(board_Title);
				
				HashMap<String,Object> map = new HashMap<String,Object>();
				
				map.put("list", list);
				mv.addObject("map", map);
				
			}else if(option.equals("작성자")){
				String user_Id = searchList;
				
				List<CrewRecruitmentBoard> list = as.selectCrewRecruitmentUserId(user_Id);
				
				HashMap<String,Object> map = new HashMap<String,Object>();
				
				map.put("list", list);
				mv.addObject("map", map);
				
			}
		
			mv.setViewName("admin/adminCrewRecruitment");
			
			return mv;
		}
		
		//관리자 크루 활동 게시판
		@RequestMapping("adminAdminCrewActivity.shw")
		public ModelAndView dminAdminCrewActivity(ModelAndView mv , HttpServletRequest request){
			
			//크루 활동 게시판 리스트 카운트
			int currentPage = 1;
			
			if(request.getParameter("currentPage") != null) {
				currentPage = Integer.parseInt(request.getParameter("currentPage"));
				
			}
			int listCount = as.getActListCount();
			
			PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
			
			List<CrewActivityBoard> list  = as.selectCrewActivityBoard(pi);
			
			HashMap<String,Object> map = new HashMap<String,Object>();
			
			map.put("list", list);
			
			
			mv.addObject("map", map);
			mv.addObject("pi", pi);
			
			mv.setViewName("admin/adminCrewActivity");
			
			
			return mv;
		}
		
	
		//크루 활동 게시판 글 삭제 처리
		@RequestMapping(value="adminCrewActivityStatus.shw")
		public String adminCrewActivityStatus(Model model,HttpServletRequest request){
					
			int board_No = Integer.parseInt(request.getParameter("board_No"));
			int result = as.updateadminCrewActivityStatus(board_No);
					
					
			return "redirect:adminAdminCrewActivity.shw";
		}
		//크루 활동 게시판 검색을 통한 데이터 검색처리
		@RequestMapping("adminCaSearchList.shw")
		public ModelAndView adminCaSearchList(ModelAndView mv,HttpServletRequest request) {
			
			String option = request.getParameter("option");
			String searchList = request.getParameter("searchList");
			
			
			if(option.equals("제목")) {
				String board_Title = searchList;
				//제목을 통한 검색
				List<CrewActivityBoard> list = as.selectCaSearchList(board_Title);
				HashMap<String,Object> map = new HashMap<String,Object>();
				
				map.put("list", list);
				mv.addObject("map", map);
				
			}else if(option.equals("작성자")) {
				String user_Id = searchList;
				//작성자를 통한 검색
				List<CrewActivityBoard> list = as.selectCaIdSearchList(user_Id);
				HashMap<String,Object> map = new HashMap<String,Object>();
				
				map.put("list", list);
				mv.addObject("map", map);
				
			}
			
			
			mv.setViewName("admin/adminCrewActivity");
			
			return mv;
		}
		
		//관리자 공고 게시판
		@RequestMapping("adminInformBoard.shw")
		public ModelAndView adminInformBoard(ModelAndView mv , HttpServletRequest request){
			
			//크루 활동 게시판 리스트 카운트
			int currentPage = 1;
			
			if(request.getParameter("currentPage") != null) {
				currentPage = Integer.parseInt(request.getParameter("currentPage"));
				
			}
			int listCount = as.getInformListCount();	
			PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
			
			List<AdminInformBoard> list = as.selectAdminInformBoard(pi);
			HashMap<String,Object> map = new HashMap<String,Object>();
			map.put("list", list);
			
			mv.addObject("map", map);
			mv.addObject("pi", pi);
			
			
			mv.setViewName("admin/adminInformBoard");
			
			return mv;
		}
		//공고 삭제처리
		@RequestMapping(value="adminInformBoardStatus.shw")
		public String adminInformBoardStatus(Model model,HttpServletRequest request) {
			
			int boardNo = Integer.parseInt(request.getParameter("boardNo"));
			int result = as.updateAdminInformBoardStatus(boardNo);
			
			
			return "redirect:adminInformBoard.shw";
		}
		//공고 검색처리
		@RequestMapping("InformBoardSearchList.shw")
		public ModelAndView InformBoardSearchList(ModelAndView mv,HttpServletRequest request) {
			
			String searchList = request.getParameter("searchList");
			
			String informBoardTitle = searchList;
			
			List<AdminInformBoard> list = as.selectInformTitle(informBoardTitle);
			HashMap<String,Object> map = new HashMap<String,Object>();
			map.put("list", list);
			
			mv.addObject("map", map);
		
			mv.setViewName("admin/adminInformBoard");
			return mv;
		}
		//게시물 삭제 목록 게시판
		@RequestMapping("adminBlackBoard.shw")
		public ModelAndView adminBlackBoard(ModelAndView mv,HttpServletRequest request) {
			
			//전체 게시판 리스트 카운트
			int currentPage = 1;
			
			if(request.getParameter("currentPage") != null) {
				currentPage = Integer.parseInt(request.getParameter("currentPage"));
				
			}
			int listCount = as.getBlackBoardListCount();	
			
			PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
			
			List<CrewActivityBoard> list = as.selectBalckBoardList(pi);
			HashMap<String,Object> map = new HashMap<String,Object>();
			map.put("list", list);
			
			mv.addObject("map", map);
			mv.addObject("pi", pi);
			
			mv.setViewName("admin/adminBlackBoard");
			
			return mv;
		}
		
		@RequestMapping(value="adminBoardStatus.shw")
		public String adminBoardStatus(Model model,HttpServletRequest request) {
		
			int board_No = Integer.parseInt(request.getParameter("board_No"));
			
			int result = as.updateAdminBoardStatus(board_No);
			
			
			
			return "redirect:adminBlackBoard.shw";
		}
		@RequestMapping("blackBoardSearchList.shw")
		public ModelAndView blackBoardSearchList(ModelAndView mv,HttpServletRequest request) {
			
			String option = request.getParameter("option");
			String searchList = request.getParameter("searchList");
			
			if(option.equals("제목")) {
				String board_Title = searchList;
				System.out.println(board_Title);
				List<CrewActivityBoard> list = as.blackTitleSelectBoard(board_Title);
				
				HashMap<String,Object> map = new HashMap<String,Object>();
				map.put("list", list);
				
				mv.addObject("map", map);
			}
				
			
			
			mv.setViewName("admin/adminBlackBoard");
			
			return mv;
		}
			
}
		

