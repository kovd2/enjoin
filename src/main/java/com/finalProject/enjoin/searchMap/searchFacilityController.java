package com.finalProject.enjoin.searchMap;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class searchFacilityController {

	
	@RequestMapping("searchFacility.kch")
	public String searchFacility() {
		
		
		return "searchMap/searchFacility";
	}
	
	@RequestMapping("searchDetail.kch")
	public String searchDetail() {
		
		return "searchMap/searchDetail";
	}
	
	@RequestMapping("detailResult.kch")
	public String detailResult() {
		
		
		return "searchMap/detailResult";
	}
	
	@RequestMapping("reviewForm.kch")
	public String reviewForm() {
		
		return "searchMap/searchReviewForm";
	}
	
}
