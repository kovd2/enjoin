package com.finalProject.enjoin.notice.controller;

import java.io.File;
import java.util.List;

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
		
		System.out.println("detail : " + detail);
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
	
	@RequestMapping("adminFAQ.hh")
	public String adminFAQ() {
		
		return "notice/adminFAQ";
	}

	@RequestMapping("FAQ.hh")
	public String FAQ() {
		
		return "notice/FAQ";
	}
	
	@RequestMapping("FAQ_detail.hh")
	public String FAQ_detail() {
		
		return "notice/FAQ_detail";
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
		
		/*int boardNo = bs.selectBoard(b);
		
		b.setBoardNo(boardNo);
		*/
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
	
}
