package com.finalProject.enjoin.company.controller;

import java.io.File;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.finalProject.enjoin.common.util.CommonUtils;
import com.finalProject.enjoin.company.model.service.CompanyService;
import com.finalProject.enjoin.company.model.vo.Attachment;
import com.finalProject.enjoin.company.model.vo.Company;


@SessionAttributes("loginUser")
@Controller
public class CompanyController {
	
	@Autowired
	private CompanyService cs;


	//회원정보 수정 폼 보여주는 메소드
	@RequestMapping("changeInfo.gs")
	public String showChangeInfo() {
		
		return "company/changeInfoForm";
	}
	//제휴시설 등록폼 보여주는 메소드
	@RequestMapping("companyInsertForm.gs")
	public String showCompanyInsertForm(){
		return "company/companyInsert";
	}

	//나의 제휴시설을 보여주는 메소드
	@RequestMapping("companylist.gs")
	public ModelAndView showCompany(HttpServletRequest request, ModelAndView mv){
		String userId = request.getParameter("userId");
		List<Company> CompanyInfoList = cs.selectCompanyInfo(userId);
		
		System.out.println("companylist" + CompanyInfoList);
		//보낼 view페이지를 설정
		mv.setViewName("company/companyView");
		
		//만든 list를 추가
		mv.addObject("CompanyInfoList", CompanyInfoList);
		
		return mv;
	}
	
	//나의 시설 이용내역을 보여주는 메소드
	@RequestMapping("useHistory.gs")
	public ModelAndView showUseHistory(HttpServletRequest request, ModelAndView mv) {
		String userId = request.getParameter("userId");
		
		List<Company> UseHistoryList = cs.selectUseHistory(userId);
		
		mv.setViewName("company/useHistory");
		mv.addObject("UseHistoryList", UseHistoryList);
		
		System.out.println("useHistory : " +  UseHistoryList);
		
		return mv;
	}

	//입장확인 폼을 보여주는 메소드
	@RequestMapping("enterConfirm.gs")
	public String showEnterConfirm() {
		return "company/enterConfirm";
	}
	
	
	//리다이렉트용 메소드
	@RequestMapping("goMainCompany.gs")
	public String goMainCompany() {
		
		return "company/insertComplete";
	}
	
	//나의 제휴시설 상세보기용 메소드
	@RequestMapping("detailView.gs")
	public ModelAndView showDetailView(ModelAndView mv, @RequestParam("facilityNo") int facilityNo, @RequestParam("userId") String userId, HashMap<String, Object> hmap) {
		
		hmap.put("userId", userId);
		hmap.put("facilityNo", facilityNo);
		System.out.println("facilityNo : " + facilityNo);
		HashMap<String, Object> com = cs.selectCompany(hmap);
		List<HashMap<String, Object>> comImg = cs.selectCompanyImg(hmap);
		
		System.out.println("com : " + com);
		System.out.println("comImg : " + comImg);
		
		mv.setViewName("company/companyDetail");
		mv.addObject("com", com);
		mv.addObject("comImg", comImg);

		
		
		return mv;
	}
	
	//이용코드 읽어오는 컨트롤러
	@RequestMapping("useCode.gs")
	@ResponseBody
	public String confirmCode(@RequestParam(value="useCode") String useCode) {
		
		System.out.println("이용코드 : " + useCode);
		
		
		int result = 0;
		result = cs.codeCk(useCode);
		
		
		System.out.println("result : " + result);
		
		return String.valueOf(result);
	}
	
	//이용코드 업데이트 컨트롤러
	@RequestMapping("updateCode.gs")
	@ResponseBody
	public String updateCode(@RequestParam(value="useCode") String useCode) {
	
		int result = 0;
		result = cs.updateCode(useCode);
		
		System.out.println("result2 : " + result);
		return String.valueOf(result);
	}
	
	//제휴시설 신청용 컨트롤러
	@RequestMapping(value="facilityInsert.gs")
	public String companyInsert(Model model, /*Company c,*/ HttpServletRequest request, 
									@RequestParam(name="gs_file1", required=false) MultipartFile origin_Name1,
									@RequestParam(name="gs_file2", required=false) MultipartFile origin_Name2,
									@RequestParam(name="gs_file3", required=false) MultipartFile origin_Name3,
									@RequestParam(name="gs_file4", required=false) MultipartFile origin_Name4) {
		
		
		//객체 꺼내기
		/*int facilityNo = Integer.parseInt(request.getParameter("facilityNo"));
		String facilityRequestDate2 = request.getParameter("facilityRequestDate");
		String facilityStartDate2 = request.getParameter("facilityStartDate");
		String facilityEndDate2 = request.getParameter("facilityEndDate");
		String facilityStatus = request.getParameter("facilityStatus");*/
				
		int facilityCopNo = Integer.parseInt(request.getParameter("facilityCopNo"));
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
		c.setFacilityRequestDate(facilityRequestDate);
		c.setFacilityStartDate(facilityStartDate);
		c.setFacilityEndDate(facilityEndDate);
		c.setFacilityStatus(facilityStatus);*/
		
		c.setFacilityCopNo(facilityCopNo);
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
		String filePath = root + "/uploadFiles/facility";
		
		System.out.println("filePath = " + filePath);
		
		//파일명 변경
		String originFileName1 = origin_Name1.getOriginalFilename();
		String ext1 = originFileName1.substring(originFileName1.lastIndexOf("."));
		String changeName1 = CommonUtils.getRandomString();
		long fileSize2 = origin_Name1.getSize();
		String fileSize1 = String.valueOf(fileSize2);
		
		//파일명 변경2
		String originFileName2 = origin_Name2.getOriginalFilename();
		String ext2 = originFileName2.substring(originFileName2.lastIndexOf("."));
		String changeName2 = CommonUtils.getRandomString();
		long fileSize4 = origin_Name2.getSize();
		String fileSize3 = String.valueOf(fileSize4);
		
		//파일명 변경3
		String originFileName3 = origin_Name3.getOriginalFilename();
		String ext3 = originFileName3.substring(originFileName3.lastIndexOf("."));
		String changeName3 = CommonUtils.getRandomString();
		long fileSize6 = origin_Name3.getSize();
		String fileSize5 = String.valueOf(fileSize6);
		
		//파일명 변경4
		String originFileName4 = origin_Name4.getOriginalFilename();
		String ext4 = originFileName4.substring(originFileName4.lastIndexOf("."));
		String changeName4 = CommonUtils.getRandomString();
		long fileSize8 = origin_Name4.getSize();
		String fileSize7 = String.valueOf(fileSize8);

		
		//파일명 바꾸기
		System.out.println("changeName1" + changeName1);
		System.out.println("changeName2" + changeName2);
		System.out.println("changeName3" + changeName3);
		System.out.println("changeName4" + changeName4);
		
		//사진을 담기위한 객체선언
		//1
		Attachment at1 = new Attachment();
		String origin_FileNames1 = String.valueOf(originFileName1);
		String changeNameExt1 = changeName1 + ext1;
		at1.setOrigin_Name(originFileName1);
		at1.setFile_Ext(ext1);
		at1.setUpload_Name(changeNameExt1);
		at1.setFile_size(fileSize1);
		
		
		//2
		Attachment at2 = new Attachment();
		String origin_FileNames2 = String.valueOf(originFileName2);
		String changeNameExt2 = changeName2 + ext2;
		at2.setOrigin_Name(originFileName2);
		at2.setFile_Ext(ext2);
		at2.setUpload_Name(changeNameExt2);
		at2.setFile_size(fileSize3);
		
		//3
		Attachment at3 = new Attachment();
		String origin_FileNames3 = String.valueOf(originFileName3);
		String changeNameExt3 = changeName3 + ext3;
		at3.setOrigin_Name(originFileName3);
		at3.setFile_Ext(ext3);
		at3.setUpload_Name(changeNameExt3);
		at3.setFile_size(fileSize5);		
		
		//4
		Attachment at4 = new Attachment();
		String origin_FileNames4 = String.valueOf(originFileName4);
		String changeNameExt4 = changeName4 + ext4;
		at4.setOrigin_Name(originFileName4);
		at4.setFile_Ext(ext4);
		at4.setUpload_Name(changeNameExt4);
		at4.setFile_size(fileSize7);
		
		
		//업로드된 파일을 지정한 경로에 저장
		try {
			origin_Name1.transferTo(new File(filePath + "/" + changeName1 + ext1));
			origin_Name2.transferTo(new File(filePath + "/" + changeName2 + ext2));
			origin_Name3.transferTo(new File(filePath + "/" + changeName3 + ext3));
			origin_Name4.transferTo(new File(filePath + "/" + changeName4 + ext4));
			
			int result = cs.insertCompany(c, at1, at2, at3, at4);
			
			return "redirect:goMainCompany.gs";
			
					
		} catch (Exception e) {
			//실패시 파일 삭제
			
			new File(filePath + "/" + changeName1 + ext1).delete();
			new File(filePath + "/" + changeName2 + ext2).delete();
			new File(filePath + "/" + changeName3 + ext3).delete();
			new File(filePath + "/" + changeName4 + ext4).delete();
			
			model.addAttribute("msg", "제휴시설신청실패");

			e.printStackTrace();
			
			
			return "common/errorPage";
			
		}	
	}
}

