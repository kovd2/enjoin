package com.finalProject.enjoin.searchMap.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.finalProject.enjoin.member.model.vo.Member;
import com.finalProject.enjoin.searchMap.model.exception.SearchListResultException;
import com.finalProject.enjoin.searchMap.model.service.FacilityService;
import com.finalProject.enjoin.searchMap.model.vo.Review;

@Controller
@SessionAttributes("loginUser")
public class searchFacilityController {
	@Autowired
	private FacilityService fs;
	
	//전체리스트조회
	@RequestMapping(value="searchFacility.kch",method = RequestMethod.POST)
	public @ResponseBody List<Map<String,Object>>searchFacility(HttpServletRequest request,String address,int no) {
		System.out.println("address : " + address);
		System.out.println("no : " + no);
		
		List<Map<String,Object>> list = null;
		list = fs.facilityList(address,no);
		System.out.println("con"+list);
		return list;
	}

	//서치된리스트 조회
	@RequestMapping("searchListFacility.kch")
	public ModelAndView searchDetail(ModelAndView mv,HttpServletRequest request,
									@RequestParam(value="search",defaultValue=" ", required=false) String search){
		System.out.println("search:"+search);
		List<Map<String,Object>> result = null;
		try {
			result = fs.searchFacility(search);
			System.out.println("Conresult"+result);
			
			
			
			mv.addObject("result", result);
			mv.setViewName("searchMap/searchListFacility");
			
		} catch (SearchListResultException e) {
			mv.addObject("msg", e.getMessage());
			mv.setViewName("common/myPage/errorPage");
		}
		return mv;
	}
	
	@RequestMapping("goMain.kch")
	public String goMain() {
		
		return "searchMap/searchFacility";
	}
	
	
	@RequestMapping("detailResult.kch")
	public ModelAndView detailResult(ModelAndView mv,HttpServletRequest request,
									HttpSession session,int facilityNo) {
		Member loginUser = (Member) request.getSession().getAttribute("loginUser");
		System.out.println("resultControllerNo:"+facilityNo);
		List<Map<String,Object>> list = null;
		list =fs.detailResult(facilityNo);
		mv.addObject("list",list);
		mv.setViewName("searchMap/detailResult");
		System.out.println("resultController:"+list);
		return mv;
	}
	@RequestMapping(value="/searchDetail.kch",method=RequestMethod.POST)
	public @ResponseBody Map<String,Object> searchDetail(HttpSession session,HttpServletRequest request,int facilityNo) {
		
		System.out.println("facilityNo:"+facilityNo);
		Map<String,Object> map = null;
		map=fs.selectOneDetail(facilityNo);
		System.out.println("detailcon:"+map);	
		return map;
	}
	
//	@RequestMapping("reviewForm.kch")
//	public String reviewForm() {
//		
//		return "searchMap/searchReviewForm";
//	}
	
	@RequestMapping("enrollReview.kch")
	public String enrollReview() {
		
		return "searchMap/enrollReview";
	}
	
	@RequestMapping(value="reviewForm.kch",method=RequestMethod.POST)
	public @ResponseBody Map<String,Object> insertEnroll(HttpServletRequest request,
									int facilityNo,int userNo,double starPoint,String contentRw){
		Map<String,Object> list = null;
	Review rw = new Review();
		rw.setFacilityNo(facilityNo);
		rw.setRwContent(contentRw);
		rw.setUserNo(userNo);
		rw.setScore(starPoint);
		
		list=fs.insertEnroll(rw);
//		
//		
		System.out.println("리뷰등록:"+list);
		return list;
		
	}
	
	
	
	
	
	
	
	
	
	
	
}
