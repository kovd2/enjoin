package com.finalProject.enjoin.informBoard.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.finalProject.enjoin.common.util.CommonUtils;
import com.finalProject.enjoin.informBoard.model.exception.BoardSelectListException;
import com.finalProject.enjoin.informBoard.model.exception.BoardSelectOneException;
import com.finalProject.enjoin.informBoard.model.service.InformBoardService;
import com.finalProject.enjoin.informBoard.model.vo.InformBoard;
import com.finalProject.enjoin.informBoard.model.vo.InformBoardFiles;
import com.finalProject.enjoin.informBoard.model.vo.InformComent;
import com.finalProject.enjoin.informBoard.model.vo.PageInfo;
import com.finalProject.enjoin.informBoard.model.vo.Pagination;
import com.finalProject.enjoin.member.model.vo.Member;


@SessionAttributes("loginUser")
@Controller
public class InformBoardController {
	@Autowired
	private InformBoardService ibs;
	//공고 게시판 리스트조회
	@RequestMapping("informBoard.kch2")
	public ModelAndView informBoard(ModelAndView mv,HttpServletRequest request) throws BoardSelectListException {
		int currentPage=1;
		if(request.getParameter("currentPage") != null){
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		int listCount = ibs.getListCount();
		System.out.println(listCount);
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		List<Map<String,Object>> list=null;
		list=ibs.selectMainList(pi);
		mv.addObject("list",list);
		mv.addObject("pi",pi);
		mv.setViewName("informBoard/informBoard");
		//System.out.println("controllerList:"+list);
		//list.get(0).get("ENROLL_DATE");
		//list.get(0).get("ATT_NO");
	//	System.out.println(list.get(0).get("ATT_NO"));
		//System.out.println("DAO"+list.get(0).get("ENROLL_DATE"));
		return mv;
	}
	@RequestMapping("informDetail.kch2")
	public ModelAndView  informDetail(ModelAndView mv,InformBoard ib,InformBoardFiles ibf,HttpSession session,HttpServletRequest request) {
		Member loginUser = (Member) request.getSession().getAttribute("loginUser");
		System.out.println("userId:"+loginUser);
		//System.out.println("boardNO:"+ib.getBoardNo());
		//디테일 정보를 담을 보드객체선언 한행만조회 
		Map<String,Object> list = null;
		Map<String,Object> list2=null;
		Map<String,Object> list3=null;
		//파일객체선언하여 attno를통해 리스트조회
		System.out.println("attNo"+ibf.getAttNo());
		try {
			list=ibs.selectBoardDetail(ib);
			mv.addObject("list",list);
			//System.out.println("controller:"+list);
			list2=ibs.selectFileDetail(ibf,ib);
			mv.addObject("list2", list2);
			//System.out.println("list2:"+list2);
			list3=ibs.selectMemberDetail(loginUser);
			mv.addObject("list3", list3);
			//System.out.println("list3:"+list3);
			
			mv.setViewName("informBoard/informDetail");
		} catch (BoardSelectOneException e) {
			mv.addObject("msg",e.getMessage());
			mv.setViewName("common/errorPage");
		}
		
		//사진객체 담아줄 리스트생성 한행만조
		return mv;
	}
	

	
	@RequestMapping("drawForm.kch2")
	public String drawForm() {
		
		
		return "informBoard/drawForm";
		
	}
	
	
	
	@RequestMapping(value="/insertInform.kch2",method=RequestMethod.POST)
	public String insertInform(Model model,HttpServletRequest request
			,@RequestParam(name="fileImg1",required=false)MultipartFile fileImg1
			,@RequestParam(name="fileImg2",required=false)MultipartFile fileImg2
			,@RequestParam(name="fileImg3",required=false)MultipartFile fileImg3
			) {
		
//		int userNo = ((Member)(request.getSession().getAttribute("loginUser"))).getUserNo();
//		System.out.println(userNo);
		String informBoardTitle = request.getParameter("informBoardTitle");
		String informBoardContent = request.getParameter("informBoardContent");
		int informPassCount = Integer.parseInt(request.getParameter("informPassCount"));
		String noticeMax = request.getParameter("noticeMax");
		String noticeMin = request.getParameter("noticeMin");
		String noticeRequest = request.getParameter("noticeRequest");
		String noticeStart = request.getParameter("noticeStart");
		String noticeEnd = request.getParameter("noticeEnd");
		String noticeStatus = request.getParameter("noticeStatus");
		String categoryNo = request.getParameter("categoryNo");
		System.out.println("categoryNo:"+categoryNo);
		String noticeDaily = request.getParameter("noticeDaily");
		String crewArea = request.getParameter("crewArea");

		System.out.println(fileImg1.isEmpty());
		System.out.println(fileImg2.isEmpty());
		System.out.println(fileImg3.isEmpty());
		System.out.println(informBoardTitle+"informBoardTitle");	
		
		InformBoard ib = new InformBoard();
		ib.setInformBoardTitle(informBoardTitle);
		ib.setInformBoardContent(informBoardContent);
		ib.setInformPassCount(informPassCount);
		ib.setNoticeRequest(noticeRequest);
		ib.setNoticeEnd(noticeEnd);
		ib.setNoticeStart(noticeStart);
		ib.setNoticeDaily(noticeDaily);
		ib.setNoticeMax(noticeMax);
		ib.setNoticeMin(noticeMin);
		ib.setNoticeStatus(noticeStatus);
		ib.setCrewArea(crewArea);
		
		
		if(categoryNo.equals("런닝")) {
			System.out.println(categoryNo);
			ib.setCategoryNo(0);
			System.out.println("수정후 카테고리:"+ib.getCategoryNo());
		}else if(categoryNo.equals("수영")) {
			ib.setCategoryNo(1);
			
		}else if(categoryNo.equals("필라테스")) {
			ib.setCategoryNo(2);
			
		}else if(categoryNo.equals("격투기")) {
			ib.setCategoryNo(3);
			
		}else if(categoryNo.equals("댄스")) {
			ib.setCategoryNo(4);
			
		}else if(categoryNo.equals("요가")) {
			ib.setCategoryNo(5);
			
		}else if(categoryNo.equals("헬스")){
			ib.setCategoryNo(6);
			
		}else if(categoryNo.equals("크로스핏")) {
			ib.setCategoryNo(7);
			
		}else if(categoryNo.equals("기타")) {
			ib.setCategoryNo(8);
			
		}
		

		
		//사진저장할 경로지정
		String root=request.getSession().getServletContext().getRealPath("resources");
		
		//파일의 경로는 root하위의 uploadFiles이다.
		String filePath= root+"/uploadFiles/"+"informBoard";
		System.out.println(filePath);
		
		
		//파일사이즈지정
		
		long originFileSize1=fileImg1.getSize();
		long originFileSize2=fileImg2.getSize();
		long originFileSize3=fileImg3.getSize();
		String fileSize1=String.valueOf(originFileSize1);
		String fileSize2=String.valueOf(originFileSize2);
		String fileSize3=String.valueOf(originFileSize3);
		
		//파일명변경

		
		String originFileName1=fileImg1.getOriginalFilename();
		String originFileName2=fileImg2.getOriginalFilename();
		String originFileName3=fileImg3.getOriginalFilename();
		
		//확장자추출
		String ext1=originFileName1.substring(originFileName1.lastIndexOf("."));
		String ext2=originFileName2.substring(originFileName2.lastIndexOf("."));
		String ext3=originFileName3.substring(originFileName3.lastIndexOf("."));
		String changeName[] = new String[4];
		for(int i = 1 ; i < 4 ; i++) {
		 changeName[i] = CommonUtils.getRandomString();
		}
//		String changeName2 = CommonUtils.getRandomString();
//		
//		String changeName3 = CommonUtils.getRandomString();
		System.out.println("changeName : " + changeName[1]);
		System.out.println("changeName : " + changeName[2]);
		System.out.println("changeName : " + changeName[3]);
		//업로드 파일명
		String uploadName1=changeName[1]+ext1;
		String uploadName2=changeName[2]+ext2;
		String uploadName3=changeName[3]+ext3;
		
		//파일순서번호
		int fileNo1=1;
		int fileNo2=2;
		int fileNo3=3;
		
		ArrayList<InformBoardFiles> fileList = new ArrayList<InformBoardFiles>();
		
		
		
		InformBoardFiles ibf = new InformBoardFiles();
		InformBoardFiles ibf2 = new InformBoardFiles();
		InformBoardFiles ibf3 = new InformBoardFiles();
		
		ibf.setFileNo(fileNo1);
		ibf2.setFileNo(fileNo2);
		ibf3.setFileNo(fileNo3);
		ibf.setFilesize(fileSize1);
		ibf2.setFilesize(fileSize2);
		ibf3.setFilesize(fileSize3);
		ibf.setOriginName(originFileName1);
		ibf2.setOriginName(originFileName2);
		ibf3.setOriginName(originFileName3);
		ibf.setFileExt(ext1);
		ibf2.setFileExt(ext2);
		ibf3.setFileExt(ext3);
		ibf.setUploadName(uploadName1);
		ibf2.setUploadName(uploadName2);
		ibf3.setUploadName(uploadName3);
		
		fileList.add(ibf);
		fileList.add(ibf2);
		fileList.add(ibf3);
		
		for(int i = 0; i < fileList.size(); i++) {
			System.out.println(fileList.get(i));
		}
		try {
			fileImg1.transferTo(new File(filePath+"/"+changeName[1]+ext1));
			fileImg2.transferTo(new File(filePath+"/"+changeName[2]+ext2));
			fileImg3.transferTo(new File(filePath+"/"+changeName[3]+ext3));
			ibs.insertInform(ib,fileList);
			return "redirect:goMain.kch2";
		} catch (Exception e) {
			System.out.println(e.getMessage());
			new File(filePath+"/"+changeName[1]+ext1).delete();
			new File(filePath+"/"+changeName[2]+ext2).delete();
			new File(filePath+"/"+changeName[3]+ext3).delete();
			
			return "common/errorPage";
		}
		
	}
	
	@RequestMapping("goMain.kch2")
	public String goMain() {
		
		return "informBoard/informBoard";
	}
	
//	@RequestMapping("goComent.kch2")
//	public @ResponseBody List<Map<String, Object>> enrollComent(
//		InformComent ic,HttpSession session,HttpServletRequest request,
//		@RequestParam (value="comentContent")String comentContent,
//		@RequestParam (value="userNo")int userNo,
//		@RequestParam (value="boardNo")int boardNo){
//		Member loginUser = (Member) request.getSession().getAttribute("loginUser");
//		System.out.println("comentCon:"+loginUser);
//		System.out.println("booardNo:"+boardNo);
//		ic.setBoardNo(boardNo);
//		ic.setComentContent(comentContent);
//		ic.setUserNo(userNo);
//		List<Map<String,Object>> list = null;
//		list = ibs.insertComent(ic);
//		return list;
//	}
	
	@RequestMapping(value="/goComent.kch2",method=RequestMethod.POST)
	public @ResponseBody List<Map<String,Object>> insertComent(HttpServletRequest request,HttpSession session,InformComent ic,
		@RequestParam(value="boardNo")int boardNo,
		@RequestParam(value="userNo")int userNo,
		@RequestParam(value="comentContent")String comentContent) {
		ic.setBoardNo(boardNo);
		ic.setUserNo(userNo);
		ic.setComentContent(comentContent);
		
		List<Map<String,Object>> map = null;
		
		map=ibs.insertComent(ic);
		
		return map;
		
	}
	
	
	
	
}




	
	
	
	
	

