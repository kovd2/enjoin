package com.finalProject.enjoin.informBoard.model.vo;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;



public class InformBoardFiles implements Serializable{
	

	private int attNo; 		//첨부파일코드
	private int fileNo;		//파일순서번호
	private String uploadName; //업로드파일명
	private String originName; //서버저장파일명
	private String filesize;	//파일크기
	private String fileExt;	//파일확장자
	private Date fileDate;		//등록일자
	private String fileType;	//테이블종류
	private int refNo;			//참조번호
	
	
	public InformBoardFiles() {}


	public InformBoardFiles(int attNo, int fileNo, String uploadName, String originName, String filesize,
			String fileExt, Date fileDate, String fileType, int refNo) {
		super();
		this.attNo = attNo;
		this.fileNo = fileNo;
		this.uploadName = uploadName;
		this.originName = originName;
		this.filesize = filesize;
		this.fileExt = fileExt;
		this.fileDate = fileDate;
		this.fileType = fileType;
		this.refNo = refNo;
	}


	public int getAttNo() {
		return attNo;
	}


	public void setAttNo(int attNo) {
		this.attNo = attNo;
	}


	public int getFileNo() {
		return fileNo;
	}


	public void setFileNo(int fileNo) {
		this.fileNo = fileNo;
	}


	public String getUploadName() {
		return uploadName;
	}


	public void setUploadName(String uploadName) {
		this.uploadName = uploadName;
	}


	public String getOriginName() {
		return originName;
	}


	public void setOriginName(String originName) {
		this.originName = originName;
	}


	public String getFilesize() {
		return filesize;
	}


	public void setFilesize(String filesize) {
		this.filesize = filesize;
	}


	public String getFileExt() {
		return fileExt;
	}


	public void setFileExt(String fileExt) {
		this.fileExt = fileExt;
	}


	public Date getFileDate() {
		return fileDate;
	}


	public void setFileDate(Date fileDate) {
		this.fileDate = fileDate;
	}


	public String getFileType() {
		return fileType;
	}


	public void setFileType(String fileType) {
		this.fileType = fileType;
	}


	public int getRefNo() {
		return refNo;
	}


	public void setRefNo(int refNo) {
		this.refNo = refNo;
	}


	@Override
	public String toString() {
		return "InformBoardFiles [attNo=" + attNo + ", fileNo=" + fileNo + ", uploadName=" + uploadName
				+ ", originName=" + originName + ", filesize=" + filesize + ", fileExt=" + fileExt + ", fileDate="
				+ fileDate + ", fileType=" + fileType + ", refNo=" + refNo + "]";
	}


	
	
	
	
	
	
	
}
