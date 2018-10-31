package com.finalProject.enjoin.informBoard;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
	
}
