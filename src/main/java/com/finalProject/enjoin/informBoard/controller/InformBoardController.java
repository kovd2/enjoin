package com.finalProject.enjoin.informBoard.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.finalProject.enjoin.common.util.CommonUtils;
import com.finalProject.enjoin.informBoard.model.service.InformBoardService;
import com.finalProject.enjoin.informBoard.model.vo.InformBoard;
import com.finalProject.enjoin.informBoard.model.vo.InformBoardFiles;


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
	public String insertInform(InformBoard ib,InformBoardFiles informBoardFiles,HttpServletRequest request) {
		
		System.out.println(ib);
		System.out.println(informBoardFiles);
		
		//사진저장할 경로지정
		String root=request.getSession().getServletContext().getRealPath("resources");
		
		//파일의 경로는 root하위의 uploadFiles이다.
		
		String filePath= root+"\\uploadFiles";
		System.out.println(filePath);
		
		//파일명변경
		String originFileName=informBoardFiles.getFileImg1().getOriginalFilename();
		String ext=originFileName.substring(originFileName.lastIndexOf("."));
		String changeName = CommonUtils.getRandomString();
		
		
		try {
			informBoardFiles.getFileImg1().transferTo(new File(filePath+"\\"+changeName+ext));
			ibs.insertInform(ib);
			
			
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		 
		
		
		
		
		
		return "redirect:goMain.kch2";
	}
	
	@RequestMapping("goMain.kch2")
	public String goMain() {
		
		return "main/main";
	}
	
	
	
	
	
	
}
