package com.finalProject.enjoin.searchMap.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.finalProject.enjoin.searchMap.model.service.FacilityService;

@Controller
@SessionAttributes("loginUser")
public class searchFacilityController {
	@Autowired
	private FacilityService fs;

	
	//전체리스트조회
	@RequestMapping("searchFacility.kch")
	public ModelAndView searchFacility(ModelAndView mv,HttpServletRequest request) {
		
		List<Map<String,Object>> list = null;
		list = fs.facilityList();
		mv.addObject("list", list);
		mv.setViewName("searchMap/searchFacility");
		System.out.println("con"+list);
		return mv;
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
