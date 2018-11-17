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
import org.springframework.web.bind.annotation.ResponseBody;
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
import com.finalProject.enjoin.myPage.model.vo.inCrew;

@Controller
public class MyPageController {
  
	//프로필
	@Autowired
	private myPageService mps;
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	//프로필 (pass수량 조회)
	@RequestMapping("profil.ljs")
	public ModelAndView showProfil(ModelAndView mv, @RequestParam("userNo") int userNo) {	
		
		int pass = mps.selectPass(userNo);
		System.out.println("pass : " + pass);
		if(pass != 0) {
			System.out.println("pass : " + pass);
			
			mv.setViewName("myPage/membership");
			mv.addObject("pass", pass);
			
			return mv;			
		}else {
			System.out.println("pass : " + pass);
			
			mv.setViewName("myPage/membership");
			mv.addObject("pass", 0);
			
			return mv;
		}
	}
	
	//정보수정 페이지
	@RequestMapping("changeInfo.ljs")
	public String changeInfo() {
		
		return "myPage/changeInfo";
	}
	//정보수정 저장
	@RequestMapping("saveInfo.ljs")
	public String updateMember(ModelAndView mv, Member m, HttpServletRequest request, 
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
			((Member)(request.getSession().getAttribute("loginUser"))).setEmail(m.getEmail());
			((Member)(request.getSession().getAttribute("loginUser"))).setPhone(m.getPhone());
			
			
			return "redirect:changeInfo.ljs";
		} catch (Exception e) {
			new File(filePath + "/" + changeName + ext).delete();
			System.out.println(e.getMessage());
			return "redirect:changeInfo.ljs";
		}
		
	}
	
	//가고싶은 시설 등록 확인
	@RequestMapping(value="addJJIMCheck.ljs")
	public @ResponseBody int addJJIMCheck(@RequestParam("facilityNo") int facilityNo, @RequestParam("userNo") int userNo) {
		
		HashMap<String, Object> hmap = new HashMap<String, Object>();
		
		hmap.put("facilityNo", facilityNo);
		hmap.put("userNo", userNo);
		
		int result = mps.selectJJIMCheck(hmap);
		
		return result;
	}
	
	//가고싶은 시설 등록
	@RequestMapping(value="addJJIM.ljs")
	public @ResponseBody int addJJIM(@RequestParam("facilityNo") int facilityNo, @RequestParam("userNo") int userNo) {
		HashMap<String, Object> hmap = new HashMap<String, Object>();
		
		hmap.put("facilityNo", facilityNo);
		hmap.put("userNo", userNo);
		
		int result = -1;
				
		result = mps.insertJJIM(hmap);
		
		return result;
	}
	
	//가고싶은 시설 목록
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
			mv.addObject("jjim", jjim);
			
			return mv;
		}
	}
	//찜 목록 삭제
	@RequestMapping("deleteJJIM.ljs")
	public ModelAndView deleteJJIM2(@RequestParam("userNo") int userNo, @RequestParam("facilityNo") int facilityNo, HashMap<String, Object> hmap, ModelAndView mv) {
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
	//좋아요 취소
	@RequestMapping("deleteJJIM.ljs2")
	public @ResponseBody int deleteJJIM(@RequestParam("userNo") int userNo, @RequestParam("facilityNo") int facilityNo, HashMap<String, Object> hmap) {
		System.out.println("userNo : " + userNo);
		System.out.println("facilityNo : " + facilityNo);
		
		hmap.put("userNo", userNo);
		hmap.put("facilityNo", facilityNo);
		
		int result = mps.deleteJJIM(hmap);
		
		return result;
	}
	
	//시설 이용전 패스 유/무 확인
	@RequestMapping(value="checkPass.ljs")
	public @ResponseBody int checkPass(@RequestParam("userNo") int userNo) {
		
		int passCount = mps.selectCheckPass(userNo);
		System.out.println("passCount : " + passCount);
		
		return passCount;
	}
	
	//시설 이용을 위한 패스 차감
	@RequestMapping(value="deductPass.ljs")
	public @ResponseBody List<HashMap<String, Object>> deductPass(@RequestParam("userNo") int userNo, @RequestParam("deductPass") int deductPass, @RequestParam("facilityNo") int facilityNo) {
		System.out.println("userNo : " + userNo);
		System.out.println("deductPass : " + deductPass);
		System.out.println("facilityNo : " + facilityNo);
		
		HashMap<String, Object> hmap = new HashMap<String, Object>();
		
		hmap.put("userNo", userNo);
		hmap.put("deductPass", deductPass);
		hmap.put("facilityNo", facilityNo);
		
		int result = mps.updatePassCount(hmap);
		
		if(result > 0) {
			String useCode = "";
			for(int i = 0; i < 8; i++){

				char lowerStr = (char)(Math.random() * 26 + 97);
				if(i % 2 == 0){
					useCode += (int)(Math.random() * 10);
				}else{
					useCode += lowerStr;
				}
			}
			String.valueOf(useCode);
			hmap.put("useCode", useCode);
			System.out.println("useCode : " + useCode);
		}
		int result2 = mps.updateUseCode(hmap);
		if(result2 > 0) {
			System.out.println("result2 : " + result2);
			List<HashMap<String, Object>> showUseCode = mps.selectUseCode(hmap);
			System.out.println("showUseCode : " + showUseCode);
			
			return showUseCode;
		}
		return null;
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

	//이용내역 조회
	@RequestMapping("useHistory.ljs")
	public @ResponseBody List<HashMap<String, Object>> useHistory(@RequestParam("date1") String date1, @RequestParam("date2") String date2, @RequestParam("userNo") int userNo) {
		HashMap<String, Object> hmap = new HashMap<String, Object>();
		
		hmap.put("date1", date1);
		hmap.put("date2", date2);
		hmap.put("userNo", userNo);

		List<HashMap<String, Object>> useHistory = mps.selectUseHistory(hmap);
		System.out.println("useHistory : " + useHistory);
		
		return useHistory;
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
		System.out.println("b:" + b);
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
	
	//내가 쓴 게시물 / 리뷰 / 댓글 페이지 / 1:1문의 
	@RequestMapping("writePosts.ljs")
	public ModelAndView writePosts(ModelAndView mv, @RequestParam("userNo") int userNo) {
		List<Board> writePost = mps.selectWritePost(userNo);
		List<Board> writeCrewBoard = mps.selectWriteCrewBoard(userNo);
		List<Coment> writeComent = mps.selectWriteComent(userNo);
		List<Board> asBoard = mps.selectAsBoard(userNo);
		
		System.out.println("writePost : " + writePost);
		System.out.println("writeCrewBoard : " + writeCrewBoard);
		System.out.println("writeComent : " + writeComent);
		System.out.println("asBoard : " + asBoard);
		
		mv.setViewName("myPage/writePosts");
		mv.addObject("writePost", writePost);
		mv.addObject("writeCrewBoard", writeCrewBoard);
		mv.addObject("writeComent", writeComent);
		mv.addObject("asBoard", asBoard);
		
		return mv;
	}
	
	//회원 탈퇴
	@RequestMapping("deleteMember.ljs")
	public @ResponseBody int deleteMember(@RequestParam("userId") String userId, @RequestParam("password") String password, HttpServletRequest request) {
		String userPwd = ((Member)(request.getSession().getAttribute("loginUser"))).getUserPwd();
		System.out.println("userId : " + userId);
		System.out.println("password : " + password);
		System.out.println("userPwd : " + userPwd);
		
		String encPassword = passwordEncoder.encode(password);
		System.out.println("encPassword : " + encPassword);
		
		if(encPassword == userPwd) {
			
			int result = mps.deleteMember(userId);
			
			return result;
		}else {
			int result = 0;
			
			return result;
		}
		
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
		
		String filePath = root + "/uploadFiles/myPage/board";
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
			attachment.transferTo(new File(filePath + "/" + changeName + ext));
			
			int result = 0;
			result = mps.insertCrewBoard(hmap);
			
			
			mv.setViewName("redirect:goCrewBoardList.ljs");
			mv.addObject("crewId", crewId);
			return mv;
			
			
		} catch (Exception e) {
			new File(filePath + "/" + changeName + ext).delete();
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
	
	//크루원 조회
	@RequestMapping("selectCrewMember.ljs")
	public ModelAndView selectCrewMember(@RequestParam("crewId") int crewId, @RequestParam("userNo") int userNo, ModelAndView mv, HashMap<String, Object> hmap) {

		System.out.println("crewId : " + crewId);
		System.out.println("userNo : " + userNo);
		
		hmap.put("crewId", crewId);
		hmap.put("userNo", userNo);
		
		List<inCrew> increwMember = mps.selectCrewMember(hmap);
		System.out.println("increwMember : " + increwMember);
		hmap.put("increwMember", increwMember);
		
		mv.setViewName("myPage/crewMemberModal");
		mv.addObject("hmap", hmap);
		
		return mv;
	}
	
	//1:1문의 게시판 상세보기
	@RequestMapping("asBoardDetail.ljs")
	public ModelAndView asBoardDetail(@RequestParam("boardNo") int boardNo, ModelAndView mv) {
		
		Board asDetail = mps.selectAsDetail(boardNo);
		
		int rCount = 0;
		
		if(asDetail.getComentList().get(0).getComentNo() > 0) {
			rCount = asDetail.getComentList().size();
		}
		System.out.println("asDetail : " + asDetail);
		System.out.println("rCount : " + rCount);
		
		mv.setViewName("myPage/asBoardDetail");
		mv.addObject("asDetail", asDetail);		
		mv.addObject("rCount", rCount);
		
		return mv;
	}
	
	//시설 이용 정보 팝업창
	@RequestMapping(value="popUp.ljs")
	public ModelAndView showUseCode(ModelAndView mv, @RequestParam("ppCount") int ppCount, @RequestParam("useCode") String useCode, 
														@RequestParam("facilityName") String facilityName, @RequestParam("passCount") int passCount) {
		System.out.println("ppCount : " + ppCount);
		System.out.println("useCode : " + useCode);
		System.out.println("facilityName : " + facilityName);
		System.out.println("passCount : " + passCount);
		
		mv.setViewName("myPage/useCodePopUp");
		mv.addObject("ppCount", ppCount);
		mv.addObject("useCode", useCode);
		mv.addObject("facilityName", facilityName);
		mv.addObject("passCount", passCount);
		
		return mv;
	}
}























