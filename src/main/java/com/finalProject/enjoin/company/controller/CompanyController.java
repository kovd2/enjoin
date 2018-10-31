package com.finalProject.enjoin.company.controller;

import java.io.File;
import java.io.IOException;

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
	@RequestMapping("companyInsertForm.me")
	public String showCompanyInsertForm(){
		return "company/companyInsert";
	}

	//나의 제휴시설을 보여주는 메소드
	@RequestMapping("companylist.me")
	public String showCompany(){
		return "company/companyView";
	}

	//나의 시설 이용내역을 보여주는 메소드
	@RequestMapping("useHistory.me")
	public String showUseHistory() {
		return "company/useHistory";
	}

	//입장확인 폼을 보여주는 메소드
	@RequestMapping("enterConfirm.me")
	public String showEnterConfirm() {
		return "company/enterConfirm";
	}


	@RequestMapping("facilityInsert.me")
	public String companyInsert(Model model, Company c, HttpServletRequest request, 
									@RequestParam(name="gs_file", required=false) MultipartFile photo) {
		System.out.println("photo = " + photo);
		System.out.println("Company = " + c);
		
		//사진 저장할 경로 지정
		String root = request.getSession().getServletContext().getRealPath("resources");
		
		//파일의 저장 경로는 root 하위의 uploadfiles이다.
		String filePath = root + "\\uploadFiles";
		
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
			
			new File(filePath + "\\" + changeName + ext).delete();
			model.addAttribute("msg", "제휴시설신청실패");
			
			return "common/errorPage";
			
		}
		
		
	}


}

