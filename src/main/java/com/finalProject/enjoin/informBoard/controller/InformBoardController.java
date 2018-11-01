package com.finalProject.enjoin.informBoard.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.finalProject.enjoin.informBoard.model.service.informBoardService;
import com.finalProject.enjoin.informBoard.model.vo.InformBoard;

@Controller
public class InformBoardController {

	
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
	public String insertInform(InformBoard ib,	HttpServletRequest request, 
			HttpServletResponse response) {
		
		informBoardService ibs = null;
		int informList =ibs.InformBoardService(ib);   
		
		
		
		
		
		return "redirect:goMain.kch2";
	}
	
	@RequestMapping("goMain.kch2")
	public String goMain() {
		
		return "main/main";
	}
	
	
	
	
	
	
}
