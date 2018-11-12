package com.finalProject.enjoin.myPage.controller;


import java.io.File;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.finalProject.enjoin.common.util.CommonUtils;
import com.finalProject.enjoin.crew.model.vo.Attachment;
import com.finalProject.enjoin.member.model.vo.Member;
import com.finalProject.enjoin.myPage.model.service.myPageService;
import com.finalProject.enjoin.myPage.model.vo.Board;
import com.finalProject.enjoin.myPage.model.vo.Coment;
import com.finalProject.enjoin.myPage.model.vo.Crew;
import com.finalProject.enjoin.myPage.model.vo.JJIM;
import com.finalProject.enjoin.myPage.model.vo.PageInfo;
import com.finalProject.enjoin.myPage.model.vo.Pagination;
import com.finalProject.enjoin.myPage.model.vo.Pass;

@Controller
public class MyPageController {
  
	//프로필
	@Autowired
	private myPageService mps;
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	//프로필 (pass수량 조회)
	@RequestMapping("profil.ljs")
	public ModelAndView showProfil(ModelAndView mv, @RequestParam("userNo") int userNo, HttpServletRequest request) {	
		
		List<Pass> pass = mps.selectPass(userNo);
		System.out.println("pass : " + pass);
		mv.setViewName("myPage/membership");
		mv.addObject("pass", pass);
		return mv;
	}
	
	//정보수정 페이지
	@RequestMapping("changeInfo.ljs")
	public String changeInfo() {
		
		return "myPage/changeInfo";
	}
	//정보수정 저장
	@RequestMapping("saveInfo.ljs")
	public String updateMember(Model model, Member m, HttpServletRequest request, 
			@RequestParam(name="photo", required=false) MultipartFile photo) {
		int userNo = ((Member)(request.getSession().getAttribute("loginUser"))).getUserNo();
		m.setUserNo(userNo);
		
		System.out.println("m : " + m);
		System.out.println("photo : " + photo);
		
		String encPassword = passwordEncoder.encode(m.getUserPwd());
		m.setUserPwd(encPassword);
		
		String root = request.getSession().getServletContext().getRealPath("resources");
		
		String filePath = root + "/uploadFiles/myPage/profil";
		System.out.println("filePath : " + filePath);
		String originFileName = photo.getOriginalFilename();
		String ext = originFileName.substring(originFileName.lastIndexOf("."));
		String changeName = CommonUtils.getRandomString();
		long fileSize1 = photo.getSize();
		String fileSize = String.valueOf(fileSize1);
		
		System.out.println("changeName : " + changeName);
		
		Attachment at = new Attachment();
		
		String origin_FileNames = String.valueOf(originFileName);
		String changeNameExt = changeName + ext;
		
		at.setOrigin_Name(originFileName);
		at.setFile_Ext(ext);
		at.setUpload_Name(changeNameExt);
		at.setFile_size(fileSize);
		
		System.out.println("Attatch : " + at);
		
		try {
			photo.transferTo(new File(filePath + "/" + changeName + ext));

			int result = 0;

			result = mps.updateMember(m, at);
			
			((Member)(request.getSession().getAttribute("loginUser"))).setUpload_name(changeName + ext);
			
			return "redirect:changeInfo.ljs";
		} catch (Exception e) {
			new File(filePath + "/" + changeName + ext).delete();
			System.out.println(e.getMessage());
			return "redirect:changeInfo.ljs";
		}
		
	}
	
	//가고싶은 시설
	@RequestMapping("wantPlace.ljs")
	public ModelAndView wantPlace(@RequestParam("userNo") int userNo, ModelAndView mv) {
		System.out.println("userNo : " + userNo);
		
		List<JJIM> jjim = mps.selectJJIM(userNo);
		
		System.out.println("jjim : " + jjim);
		
		if(jjim != null) {
			mv.setViewName("myPage/wantPlace");
			mv.addObject("jjim", jjim);
		
			return mv;
		}else {
			mv.setViewName("myPage/wantPlace");
			
			return mv;
		}
	}
	//찜 목록 삭제
	@RequestMapping("deleteJJIM.ljs")
	public ModelAndView deleteJJIM(@RequestParam("userNo") int userNo, @RequestParam("facilityNo") int facilityNo, HashMap<String, Object> hmap, ModelAndView mv) {
		System.out.println("userNo : " + userNo);
		System.out.println("facilityNo : " + facilityNo);
		
		hmap.put("userNo", userNo);
		hmap.put("facilityNo", facilityNo);
		
		int result = mps.deleteJJIM(hmap);
		
		if(result > 0) {
			mv.setViewName("redirect:wantPlace.ljs");
			mv.addObject("userNo", userNo);
			
			return mv;
		}	
		
		return mv;
	}
	
	//이용기록
	@RequestMapping("history.ljs")
	public String history() {
		
		return "myPage/history";
	}
	
	//생성 크루 목록 & 가입된 크루 목록 조회 & 크루 가입 신청한 유저 정보 조회
	@RequestMapping("crewManager.ljs")
	public ModelAndView crewManager(ModelAndView mv, @RequestParam("userNo") int userNo) {
		System.out.println("userNo : " + userNo);
		List<Crew> crewList = mps.selectCrewList(userNo);
		List<Crew> inCrewList = mps.selectInCrewList(userNo);
		List<Crew> crewAcceptList = mps.selectCrewAcceptList(userNo);
		
		
		System.out.println("크로 목록 : " + crewList);
		System.out.println("inCrewList : " + inCrewList);
		System.out.println("승인 대기 목록 : " + crewAcceptList);
		
		mv.addObject("crewList", crewList);
		mv.addObject("inCrewList", inCrewList);
		mv.addObject("crewAcceptList", crewAcceptList);

		mv.setViewName("myPage/crewManager");
		return mv;
	}
	
	//크루 승인 
	@RequestMapping("acceptCrew.ljs")
	public ModelAndView acceptCrew(ModelAndView mv, HttpServletRequest request, HashMap<String, Object> hmap) {
		int userNo2 = ((Member)(request.getSession().getAttribute("loginUser"))).getUserNo();
		int userNo = Integer.parseInt(request.getParameter("userNo"));
		int crewId = Integer.parseInt(request.getParameter("crewId"));
		
		System.out.println("userNo : " + userNo);
		System.out.println("crewId : " + crewId);
		
		hmap.put("userNo", userNo);
		hmap.put("crewId", crewId);
		
		int result = mps.updateCrewApply(hmap);
		

		mv.setViewName("redirect:crewManager.ljs");
		mv.addObject("userNo", userNo2);

		return mv;
		
	}
	
	//기업관리 페이지 이동
	@RequestMapping("Enterprise.ljs")
	public String Enterprise() {
		
		return "myPage/enterprise";
	}
	
	//시설이용내역 페이지 이동
	@RequestMapping("enterpriseUseHistory.ljs")
	public String enterpriseUseHistory() {
		
		return "myPage/enterpriseUseHistory";
	}
	
	//크루 게시판 조회
	@RequestMapping("goCrewBoardList.ljs")
	public ModelAndView goCrewBoard(ModelAndView mv, HttpServletRequest request, @RequestParam("crewId") int crewId){
		int currentPage = 1;
		
		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		
		int listCount = mps.getListCount(crewId);
		
		if(listCount == 0) {
			mv.setViewName("crew/crewBoardList");
			mv.addObject("crewId", crewId);
			return mv;
		}
		if(listCount > 0) {
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		//게시물 전체
			List<Board> list = mps.crewBoardList(pi, crewId);
			System.out.println("list : " + list);
		
			String crewName = list.get(0).getCrewName();
		
			mv.setViewName("crew/crewBoardList");
			mv.addObject("list", list);
			mv.addObject("pi", pi);
			mv.addObject("crewId", crewId);
			mv.addObject("crewName", crewName);
		}
			return mv;
	}
	
	//크루 게시판 상세보기
	@RequestMapping("crewBoardDetail.ljs")
	public ModelAndView crewBoardDetail(@RequestParam("boardNo") int boardNo, ModelAndView mv) {
		System.out.println("boardNo : " + boardNo);
		Board b = mps.crewBoardDetail(boardNo);
		
		int rCount = 0;
		
		int result = mps.updateBoardCount(boardNo);
		
		if(b.getComentList().get(0).getComentNo() > 0) {
			rCount = b.getComentList().size();
		}
		System.out.println("Detail : " + b);
		System.out.println("rCount : " + rCount);
		
		mv.setViewName("crew/crewBoardDetail");		
		mv.addObject("Detail", b);
		mv.addObject("rCount", rCount);
		
		return mv;
	}
	
	//크루 게시판 작성 폼으로 이동
	@RequestMapping("goCrewBoardForm.ljs")
	public ModelAndView goCrewBoardForm(@RequestParam("crewId") int crewId, ModelAndView mv) {
		
		mv.setViewName("crew/crewBoardForm");
		mv.addObject("crewId", crewId);
		
		return mv;
	}
	
	//내가 쓴 게시물 / 리뷰/ 댓글 페이지
	@RequestMapping("writePosts.ljs")
	public ModelAndView writePosts(ModelAndView mv, @RequestParam("userNo") int userNo) {
		List<Board> writePost = mps.selectWritePost(userNo);
		List<Board> writeCrewBoard = mps.selectWriteCrewBoard(userNo);
		List<Coment> writeComent = mps.selectWriteComent(userNo);
		
		System.out.println("writePost : " + writePost);
		System.out.println("writeCrewBoard : " + writeCrewBoard);
		System.out.println("writeComent : " + writeComent);
		
		mv.setViewName("myPage/writePosts");
		mv.addObject("writePost", writePost);
		mv.addObject("writeCrewBoard", writeCrewBoard);
		mv.addObject("writeComent", writeComent);
		
		return mv;
	}
	
	//회원 탈퇴
	@RequestMapping("deleteMember.ljs")
	public String deleteMember(@RequestParam("userId") String userId) {
		System.out.println("userId : " + userId);
		
		//mps.deleteMember(userId);
		
		return "";
	}
	
	//크루 게시물 작성
	@RequestMapping("insertCrewBoard.ljs")
	public ModelAndView insertCrewBoard(@RequestParam(name="crewId") int crewId, ModelAndView mv,
			@RequestParam(name="attachment", required=false) MultipartFile attachment, HttpServletRequest request) {
		
		int userNo = ((Member)(request.getSession().getAttribute("loginUser"))).getUserNo();
		
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		System.out.println("crewId : " + crewId);
		Board b = new Board();
		b.setBoardTitle(title);
		b.setBoardContent(content);
		
		HashMap<String, Object> hmap = new HashMap<String, Object>();
		
		
		String root = request.getSession().getServletContext().getRealPath("resources");
		
		String filePath = root + "\\uploadFiles\\myPage\\board";
		System.out.println("filePath : " + filePath);
		String originFileName = attachment.getOriginalFilename();
		String ext = originFileName.substring(originFileName.lastIndexOf("."));
		String changeName = CommonUtils.getRandomString();
		long fileSize1 = attachment.getSize();
		String fileSize = String.valueOf(fileSize1);
		
		System.out.println("changeName : " + changeName);
		
		Attachment at = new Attachment();
		
		String origin_FileNames = String.valueOf(originFileName);
		String changeNameExt = changeName + ext;
		
		at.setOrigin_Name(originFileName);
		at.setFile_Ext(ext);
		at.setUpload_Name(changeNameExt);
		at.setFile_size(fileSize);		
		
		System.out.println("Attatch : " + at);
		
		hmap.put("b", b);
		hmap.put("userNo", userNo);
		hmap.put("crewId", crewId);
		hmap.put("at", at);
		
		try {
			attachment.transferTo(new File(filePath + "\\" + changeName + ext));
			
			int result = 0;
			result = mps.insertCrewBoard(hmap);
			
			
			mv.setViewName("redirect:goCrewBoardList.ljs");
			mv.addObject("crewId", crewId);
			return mv;
			
			
		} catch (Exception e) {
			new File(filePath + "\\" + changeName + ext).delete();
			System.out.println(e.getMessage());
			mv.setViewName("redirect:goCrewBoardForm.ljs");
			return mv;
		}
	}
	
	//크루게시판 댓글 작성
	@RequestMapping("insertComent.ljs")
	public ModelAndView insertComent(@RequestParam(name="reply") String reply, @RequestParam(name="userNo") int userNo,
			@RequestParam(name="boardNo") int boardNo, HashMap<String, Object> hmap, ModelAndView mv) {
		
		System.out.println("reply : " + reply);
		System.out.println("userNo : " + userNo);
		System.out.println("boardNo : " + boardNo);
		
		hmap.put("reply", reply);
		hmap.put("userNo", userNo);
		hmap.put("boardNo", boardNo);
		
		
		int result = mps.insertComent(hmap);
		
		mv.setViewName("redirect:crewBoardDetail.ljs");
		mv.addObject("boardNo", boardNo);
		return mv;
	}
}























