package com.finalProject.enjoin.notice.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.finalProject.enjoin.common.util.CommonUtils;
import com.finalProject.enjoin.crew.model.vo.Attachment;
import com.finalProject.enjoin.member.model.vo.Member;
import com.finalProject.enjoin.myPage.model.vo.PageInfo;
import com.finalProject.enjoin.myPage.model.vo.Pagination;
import com.finalProject.enjoin.notice.model.service.BoardService;
import com.finalProject.enjoin.notice.model.vo.Board;

@Controller
public class noticeController {
	
	@Autowired
	private BoardService bs;
	
	//공지사항 목록
	@RequestMapping("notice.hh")
	public ModelAndView list(ModelAndView mav, HttpServletRequest request) throws Exception {
		
		//페이징 처리
		int currentPage = 1;
		
		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		int listCount = bs.getListCount();
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		//리스트 조회
		List<Board> list = bs.listAll(pi);

		mav.setViewName("notice/noticePage");
		mav.addObject("list", list);
		mav.addObject("pi", pi);
		return mav;
	}
	
	//공지사항 상세보기
	@RequestMapping("noticeDetail.hh")
	public ModelAndView view(@RequestParam("boardNo")int boardNo, ModelAndView mv) throws Exception{
		Board detail = bs.read(boardNo);
		
		
		mv.setViewName("notice/noticeDetail");
		mv.addObject("detail", detail);
		
		return mv;
	}
	
	@RequestMapping("serviceCenter.hh")
	public String serviceCenter() {
		
		return "notice/serviceCenter";
	}
	
	@RequestMapping("contact.hh")
	public String contact() {
		
		return "notice/contact";
	}
	
	@RequestMapping("contactDetail.hh")
	public String contactDetail() {
		
		return "notice/contactDetail";
	}
	
	/*//1:1 문의 등록(사용자)
	@RequestMapping("contactInsert.hh")
	public String contactInsert(@ModelAttribute Board b, HttpServletRequest request, @RequestParam(name="photo",required=false)MultipartFile photo, @RequestParam(name="category")int category) {
		//사진 경로 지정
		String root = request.getSession().getServletContext().getRealPath("resources");
		String filePath = root +"\\uploadFiles\\admin";
		
		//파일명 변경
		String originFileName = photo.getOriginalFilename();
		String ext = originFileName.substring(originFileName.lastIndexOf("."));
		
		String changeName = CommonUtils.getRandomString();
		
		long fileSize1 = photo.getSize();
		
		String fileSize = String.valueOf(fileSize1);
		
		Attachment at = new Attachment();
		
		String origin_fileNames = String.valueOf(originFileName);
		
		String changeNameExt = changeName + ext;
		
		at.setOrigin_Name(originFileName);
		at.setFile_Ext(ext);
		at.setUpload_Name(changeNameExt);
		at.setFile_size(fileSize);
		
		try {
			photo.transferTo(new File(filePath + "\\" + changeName+ext));
		} catch (Exception e) {
			
			new File(filePath + "\\" + changeName + ext).delete();
		}
		int userNo = ((Member)(request.getSession().getAttribute("loginUser"))).getUserNo();
		
		bs.insertContact(b, userNo, at);
		
		
		
		return "notice/contactInsert";
	}
	*/
	@RequestMapping("passPurchase.hh")
	public String passPurchase() {
		
		return "notice/passPurchase";
	}
	
	@RequestMapping("passPurchaseDetail.hh")
	public String passPurchaseDetail() {
		
		return "notice/passPurchaseDetail";
	}
	
	@RequestMapping("passPurchaseFinish.hh")
	public String passPurchaseFinish() {
		
		return "notice/passPurchaseFinish";
	}
	
	//관리자 FAQ 목록
	@RequestMapping("adminFAQ.hh")
	public ModelAndView adminFAQ(ModelAndView mav, HttpServletRequest request) throws Exception {
		
		int currentPage = 1;
		
		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		int listCount = bs.getListCount2();
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		//리스트 조회
		List<Board> list = bs.faqListAll(pi);
		
		Board b = new Board();
		
		mav.addObject("list", list);
		mav.setViewName("notice/adminFAQ");
		mav.addObject("pi", pi);
		
		return mav;
		
	}
	
	@RequestMapping("adminFAQInsert.hh")
	public String adminFAQInsert() {
		
		return "notice/adminFAQInsert";
	}
	
	//FAQ 등록
	@RequestMapping("adminFAQInsertBtn.hh")
	public String adminNoticeInsertBtn(@ModelAttribute Board b, HttpServletRequest request, @RequestParam(name="category")String category) throws Exception {
		int userNo = ((Member)(request.getSession().getAttribute("loginUser"))).getUserNo();
		
		bs.insertFAQ(b, userNo, category);
		
		return "redirect:adminFAQ.hh";
	}
	
	@RequestMapping("FAQ.hh")
	public String FAQ() {
		
		return "notice/FAQ";
	}
	
	//FAQ 상세보기
	@RequestMapping("FAQ_detail.hh")
	public ModelAndView FAQ_detail(@RequestParam("boardNo")int boardNo, ModelAndView mv) throws Exception{
		
		Board detail = bs.userRead(boardNo);
		
		mv.setViewName("notice/FAQ_detail");
		mv.addObject("detail", detail);
		
		return mv;
	}

	//관리자 공지사항 목록
	@RequestMapping("adminNotice.hh")
	public ModelAndView adminNotice(ModelAndView mav, HttpServletRequest request) throws Exception{
		
		int currentPage = 1;
		
		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		int listCount = bs.getListCount();
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		//리스트 조회
		List<Board> list = bs.listAll(pi);

		mav.setViewName("notice/adminNotice");
		mav.addObject("list", list);
		mav.addObject("pi", pi);
		
		return mav;
	}
	
	//관리자 공지사항 상세보기
	@RequestMapping("adminNoticeDetail.hh")
	public ModelAndView adminNoticeDetail(@RequestParam("boardNo")int boardNo, ModelAndView mv) throws Exception{
		Board detail = bs.read(boardNo);
		
		mv.setViewName("notice/adminNoticeDetail");
		mv.addObject("detail", detail);
		
		return mv;
	}
	
	//공지사항 등록페이지
	@RequestMapping("adminNoticeInsert.hh")
	public String adminNoticeInsert() {
		
		return "notice/adminNoticeInsert";
	}
	//공지사항 등록
	@RequestMapping("adminNoticeInsertBtn.hh")
	public String adminNoticeInsertBtn(@ModelAttribute Board b, HttpServletRequest request, @RequestParam(name="photo",required=false)MultipartFile photo) throws Exception {
		
		//사진 경로 지정
		String root = request.getSession().getServletContext().getRealPath("resources");
		String filePath = root +"\\uploadFiles\\admin";
		
		//파일명 변경
		String originFileName = photo.getOriginalFilename();
		String ext = originFileName.substring(originFileName.lastIndexOf("."));
		
		String changeName = CommonUtils.getRandomString();
		
		long fileSize1 = photo.getSize();
		
		String fileSize = String.valueOf(fileSize1);
		
		Attachment at = new Attachment();
		
		String origin_fileNames = String.valueOf(originFileName);
		
		String changeNameExt = changeName + ext;
		
		at.setOrigin_Name(originFileName);
		at.setFile_Ext(ext);
		at.setUpload_Name(changeNameExt);
		at.setFile_size(fileSize);
		
		photo.transferTo(new File(filePath + "\\" + changeName+ext));
		
		int userNo = ((Member)(request.getSession().getAttribute("loginUser"))).getUserNo();
		
		bs.insertBoard(b, userNo, at);
		
		return "redirect:adminNotice.hh";
	}
	
	//공지사항 수정
	@RequestMapping("adminNoticeUpdate.hh")
	public String adminNoticeUpdate(@ModelAttribute Board b, HttpServletRequest request, @RequestParam("boardNo")int boardNo) throws Exception {
		
		int userNo = ((Member)(request.getSession().getAttribute("loginUser"))).getUserNo();
		
		bs.updateBoard(b, userNo, boardNo);
		
		return "redirect:adminNotice.hh";
	}
	
	//공지사항 삭제
	@RequestMapping("adminNoticeDelete")
	public String adminNoticeDelete(@ModelAttribute Board b, HttpServletRequest request, @RequestParam("boardNo")int boardNo) throws Exception {
		
		int userNo = ((Member)(request.getSession().getAttribute("loginUser"))).getUserNo();
		
		bs.deleteBoard(b, userNo, boardNo);
				
		return "redirect:adminNotice.hh";
	}
	
	//관리자 FAQ 상세보기
	@RequestMapping("adminFAQDetail.hh")
	public ModelAndView faqView(@RequestParam("boardNo")int boardNo, ModelAndView mv) throws Exception{
		
		Board faqDetail = bs.faqRead(boardNo);
		
		
		mv.setViewName("notice/adminFAQDetail");
		mv.addObject("faqDetail", faqDetail);
		
		return mv;
	}
	
	//FAQ 수정
	@RequestMapping("adminFAQUpdate.hh")
	public String adminFAQUpdate(@ModelAttribute Board b, HttpServletRequest request, @RequestParam("boardNo")int boardNo, @RequestParam("category")String category) throws Exception {
		
		int userNo = ((Member)(request.getSession().getAttribute("loginUser"))).getUserNo();
		
		bs.updateFAQ(b, userNo, boardNo, category);
		
		return "redirect:adminFAQ.hh";
	}
	
	//FAQ 삭제
	@RequestMapping("adminFAQDelete.hh")
	public String adminFAQDelete(@ModelAttribute Board b, HttpServletRequest request, @RequestParam("boardNo")int boardNo) throws Exception {
		
		int userNo = ((Member)(request.getSession().getAttribute("loginUser"))).getUserNo();
		
		bs.deleteFAQ(b, userNo, boardNo);
				
		return "redirect:adminFAQ.hh";
	}

	//검색 페이지
	@RequestMapping("search.hh")
	public ModelAndView search(@RequestParam("keyword")String keyword, ModelAndView mav) throws Exception {
		
		List<Board> list = bs.search(keyword);
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("list", list);
		map.put("keyword", keyword);
		
		mav.addObject("map", map);
		
		
		mav.setViewName("notice/FAQ");
		
		return mav;
	}
	
	//채팅 팝업
	@RequestMapping("chatPopUp.hh")
	public String chatPopUp() {
		
		
		return "notice/chatPopUp";
	}
		
	
}
