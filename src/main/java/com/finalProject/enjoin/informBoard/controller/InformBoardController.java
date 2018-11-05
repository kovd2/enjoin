package com.finalProject.enjoin.informBoard.controller;

import java.io.File;
import java.io.IOException;
import java.util.GregorianCalendar;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.finalProject.enjoin.common.util.CommonUtils;
import com.finalProject.enjoin.informBoard.model.exception.InsertInformException;
import com.finalProject.enjoin.informBoard.model.service.InformBoardService;
import com.finalProject.enjoin.informBoard.model.vo.InformBoard;
import com.finalProject.enjoin.informBoard.model.vo.InformBoardFiles;
import com.finalProject.enjoin.member.model.vo.Member;

@SessionAttributes("loginUser")
@Controller
public class InformBoardController {
	

	@Autowired
	private InformBoardService ibs;
	
	@RequestMapping("informBoard.kch2")
	public String informBoard() {
		
		return "informBoard/informBoard";
		
	}
	@RequestMapping("informDetail.kch2")
	public String informDetail() {
		
		return "informBoard/informDetail";
	}
	
	@RequestMapping("reviewForm.kch2")
	public String reviewForm() {
		
		return "informBoard/reviewForm";
	}
	@RequestMapping("drawForm.kch2")
	public String drawForm() {
		
		
		return "informBoard/drawForm";
		
	}
	@RequestMapping(value="insertInform.kch2",method=RequestMethod.POST)
	public String insertInform(Model model,HttpServletRequest request
			,@RequestParam(name="fileImg1",required=false)MultipartFile fileImg1
			,@RequestParam(name="fileImg2",required=false)MultipartFile fileImg2
			,@RequestParam(name="fileImg3",required=false)MultipartFile fileImg3
			) {
		int userNo = ((Member)(request.getSession().getAttribute("loginUser"))).getUserNo();
		System.out.println(userNo);
		String informBoardTitle = request.getParameter("informBoardTitle");
		String informBoardContent = request.getParameter("informBoardContent");
		int informPassCount = Integer.parseInt(request.getParameter("informPassCount"));
		String noticeMax = request.getParameter("noticeMax");
		String noticeMin = request.getParameter("noticeMin");
		String noticeRequest1 = request.getParameter("noticeRequest");
		String noticeStart1 = request.getParameter("noticeStart");
		String noticeEnd1 = request.getParameter("noticeEnd");
		String noticeStatus = request.getParameter("noticeStatus");
		String categoryNo = request.getParameter("categoryNo");
		String noticeDaily = request.getParameter("noticeDaily");
	
		
		

		java.sql.Date requestDay = null;
		java.sql.Date endDay = null;
		java.sql.Date startDay=null;
		
		if(noticeRequest1 != ""&&noticeEnd1 != ""&&noticeStart1 != ""){
			String[] dateArr1 = noticeRequest1.split("-");
			String[] dateArr2 = noticeEnd1.split("-");
			String[] dateArr3 = noticeStart1.split("-");
			int[] drr1 = new int[dateArr1.length];
			int[] drr2 = new int[dateArr2.length];
			int[] drr3 = new int[dateArr3.length];
			
			for(int i =0; i < dateArr1.length; i ++){
				drr1[i] = Integer.parseInt(dateArr1[i]);
			}
			
			for(int i =0; i < dateArr2.length; i ++){
				drr2[i] = Integer.parseInt(dateArr2[i]);
			}
			
			for(int i =0; i < dateArr3.length; i ++){
				drr3[i] = Integer.parseInt(dateArr3[i]);
			}
			requestDay = new java.sql.Date(new GregorianCalendar(drr1[0],drr1[1] - 1, drr1[2]).getTimeInMillis());
			endDay = new java.sql.Date(new GregorianCalendar(drr2[0],drr2[1] - 1, drr2[2]).getTimeInMillis());
			startDay=new java.sql.Date(new GregorianCalendar(drr3[0],drr3[1] - 1, drr3[2]).getTimeInMillis());
		}else{
			
			requestDay = new java.sql.Date(new GregorianCalendar().getTimeInMillis());
			endDay = new java.sql.Date(new GregorianCalendar().getTimeInMillis());
			startDay = new java.sql.Date(new GregorianCalendar().getTimeInMillis());
		}
        
		
		System.out.println(fileImg1.isEmpty());
		System.out.println(fileImg2.isEmpty());
		System.out.println(fileImg3.isEmpty());
		System.out.println(informBoardTitle+"informBoardTitle");
		 
		 
		
		InformBoard ib = new InformBoard();
		ib.setInformBoardTitle(informBoardTitle);
		ib.setInformBoardContent(informBoardContent);
		ib.setInformPassCount(informPassCount);
		ib.setNoticeRequest(requestDay);
		ib.setNoticeEnd(endDay);
		ib.setNoticeStart(startDay);
		ib.setNoticeDaily(noticeDaily);
		ib.setNoticeMax(noticeMax);
		ib.setNoticeMin(noticeMin);
		ib.setNoticeStatus(noticeStatus);
		
		if(categoryNo.equals("런닝")) {
			ib.setCategoryNo(0);
			Integer.parseInt(categoryNo);
		}else if(categoryNo.equals("수영")) {
			ib.setCategoryNo(1);
			Integer.parseInt(categoryNo);
		}else if(categoryNo.equals("필라테스")) {
			ib.setCategoryNo(2);
			Integer.parseInt(categoryNo);
		}else if(categoryNo.equals("격투기")) {
			ib.setCategoryNo(3);
			Integer.parseInt(categoryNo);
		}else if(categoryNo.equals("댄스")) {
			ib.setCategoryNo(4);
			Integer.parseInt(categoryNo);
		}else if(categoryNo.equals("요가")) {
			ib.setCategoryNo(5);
			Integer.parseInt(categoryNo);
		}else if(categoryNo.equals("헬스")){
			ib.setCategoryNo(6);
			Integer.parseInt(categoryNo);
		}else if(categoryNo.equals("크로스핏")) {
			ib.setCategoryNo(7);
			Integer.parseInt(categoryNo);
		}else if(categoryNo.equals("기타")) {
			ib.setCategoryNo(8);
			Integer.parseInt(categoryNo);
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
		
		String changeName = CommonUtils.getRandomString();
		System.out.println("changeName : " + changeName);
		//업로드 파일명
		String uploadName1=changeName+ext1;
		String uploadName2=changeName+ext2;
		String uploadName3=changeName+ext3;
		
		InformBoardFiles ibf = new InformBoardFiles();
		ibf.setFilesize(fileSize1);
		ibf.setFilesize(fileSize2);
		ibf.setFilesize(fileSize3);
		ibf.setOriginName(originFileName1);
		ibf.setOriginName(originFileName2);
		ibf.setOriginName(originFileName3);
		ibf.setFileExt(ext1);
		ibf.setFileExt(ext2);
		ibf.setFileExt(ext3);
		ibf.setUploadName(uploadName1);
		ibf.setUploadName(uploadName2);
		ibf.setUploadName(uploadName3);
		
		try {
			fileImg1.transferTo(new File(filePath+"/"+changeName+ext1));
			fileImg2.transferTo(new File(filePath+"/"+changeName+ext2));
			fileImg3.transferTo(new File(filePath+"/"+changeName+ext3));
			int result = 0;
			result = ibs.insertInform(ib,ibf);
		} catch (IllegalStateException e) {
			
			e.printStackTrace();
		} catch (IOException e) {
			
			e.printStackTrace();
		} catch (InsertInformException e) {
			
			e.printStackTrace();
		}
		
		
		
		
		return "redirect:goMain.kch2";
	}
	
	@RequestMapping("goMain.kch2")
	public String goMain() {
		
		return "informBoard/informBoard";
	}
	
	
	
	
	
	
}
