package com.finalProject.enjoin.company.controller;

import java.io.File;
import java.sql.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.finalProject.enjoin.common.util.CommonUtils;
import com.finalProject.enjoin.company.model.service.CompanyService;
import com.finalProject.enjoin.company.model.vo.Company;


@SessionAttributes("loginUser")
@Controller
public class CompanyController {
	
	@Autowired
	private CompanyService cs;


	//제휴시설 등록폼 보여주는 메소드
	@RequestMapping("companyInsertForm.gs")
	public String showCompanyInsertForm(){
		return "company/companyInsert";
	}

	//나의 제휴시설을 보여주는 메소드
	@RequestMapping("companylist.gs")
	public String showCompany(){
		return "company/companyView";
	}

	//나의 시설 이용내역을 보여주는 메소드
	@RequestMapping("useHistory.gs")
	public String showUseHistory() {
		return "company/useHistory";
	}

	//입장확인 폼을 보여주는 메소드
	@RequestMapping("enterConfirm.gs")
	public String showEnterConfirm() {
		return "company/enterConfirm";
	}


	@RequestMapping("facilityInsert.gs")
	public String companyInsert(Model model, /*Company c,*/ HttpServletRequest request, 
									@RequestParam(name="gs_file", required=false) MultipartFile photo) {
		System.out.println("photo = " + photo);
		
		//객체 꺼내기
		/*int facilityNo = Integer.parseInt(request.getParameter("facilityNo"));
		int facilityCopNo = Integer.parseInt(request.getParameter("facilityCopNo"));
		String facilityRequestDate2 = request.getParameter("facilityRequestDate");
		String facilityStartDate2 = request.getParameter("facilityStartDate");
		String facilityEndDate2 = request.getParameter("facilityEndDate");
		String facilityStatus = request.getParameter("facilityStatus");*/
				
		String facilityName = request.getParameter("facilityName");
		String facilityArea = request.getParameter("facilityArea");
		String facilitySection = request.getParameter("facilitySection");
		String facilityAddress = request.getParameter("facilityAddress");
		String facilityEvent = request.getParameter("facilityEvent");
		String facilityManagerName = request.getParameter("facilityManagerName");
		String facilityManagerPhone = request.getParameter("facilityManagerPhone");
		String mon_fri_time = request.getParameter("mon_fri_time");
		String sat_time = request.getParameter("sat_time");
		String sun_time = request.getParameter("sun_time");
		String passCount = request.getParameter("passCount");
		String timeForCall = request.getParameter("timeForCall");
		
		//date사용
		/*java.sql.Date facilityRequestDate = java.sql.Date.valueOf(facilityRequestDate2);
		java.sql.Date facilityStartDate = java.sql.Date.valueOf(facilityStartDate2);
		java.sql.Date facilityEndDate = java.sql.Date.valueOf(facilityEndDate2);*/
		
		//Company 객체 생성
		Company c = new Company();
		
		//객체에 값 담기
		/*c.setFacilityNo(facilityNo);
		c.setFacilityCopNo(facilityCopNo);
		c.setFacilityRequestDate(facilityRequestDate);
		c.setFacilityStartDate(facilityStartDate);
		c.setFacilityEndDate(facilityEndDate);
		c.setFacilityStatus(facilityStatus);*/
		
		c.setFacilityName(facilityName);
		c.setFacilityArea(facilityArea);
		c.setFacilitySection(facilitySection);
		c.setFacilityAddress(facilityAddress);
		c.setFacilityEvent(facilityEvent);
		c.setFacilityManagerName(facilityManagerName);
		c.setFacilityManagerPhone(facilityManagerPhone);
		c.setMon_fri_time(mon_fri_time);
		c.setSat_time(sat_time);
		c.setSun_time(sun_time);
		c.setPassCount(passCount);
		c.setTimeForCall(timeForCall);
		
		System.out.println("Company : " + c);
		
		
		//사진 저장할 경로 지정
		String root = request.getSession().getServletContext().getRealPath("resources");
		
		//파일의 저장 경로는 root 하위의 uploadfiles이다.
		String filePath = root + "\\uploadFiles\\facility";
		
		System.out.println("filePath = " + filePath);
		
		//파일명 변경
		String originFileName = photo.getOriginalFilename();
		String ext = originFileName.substring(originFileName.lastIndexOf("."));
		String changeName = CommonUtils.getRandomString();
		
		//업로드된 파일을 지정한 경로에 저장
		
		try {
			photo.transferTo(new File(filePath + "\\" + changeName + ext));
			
			int result = cs.insertCompany(c);
			
			return "company/companyInsert";
		
		} catch (Exception e) {
			//실패시 파일 삭제
			System.out.println("dao company : " + c);
			new File(filePath + "\\" + changeName + ext).delete();
			model.addAttribute("msg", "제휴시설신청실패");
			
			
			return "common/errorPage";
			
		}
		
		
	}


}

