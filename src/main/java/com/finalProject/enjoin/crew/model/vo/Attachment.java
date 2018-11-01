package com.finalProject.enjoin.crew.model.vo;

import java.sql.Date;

public class Attachment implements java.io.Serializable {
	
	private int att_No; 		//첨부파일코드
	private int file_No;		//파일순서번호
	private String upload_Name; //업로드파일명
	private String origin_Name; //서버저장파일명
	private String file_size;	//파일크기
	private String file_Ext;	//파일확장자
	private Date file_Date;		//등록일자
	private String file_Type;	//테이블종류
	private int ref_No;			//참조번호
	
	public Attachment(){}

	public int getAtt_No() {
		return att_No;
	}

	public int getFile_No() {
		return file_No;
	}

	public String getUpload_Name() {
		return upload_Name;
	}

	public String getOrigin_Name() {
		return origin_Name;
	}

	public String getFile_size() {
		return file_size;
	}

	public String getFile_Ext() {
		return file_Ext;
	}

	public Date getFile_Date() {
		return file_Date;
	}

	public String getFile_Type() {
		return file_Type;
	}

	public int getRef_No() {
		return ref_No;
	}

	public void setAtt_No(int att_No) {
		this.att_No = att_No;
	}

	public void setFile_No(int file_No) {
		this.file_No = file_No;
	}

	public void setUpload_Name(String upload_Name) {
		this.upload_Name = upload_Name;
	}

	public void setOrigin_Name(String origin_Name) {
		this.origin_Name = origin_Name;
	}

	public void setFile_size(String file_size) {
		this.file_size = file_size;
	}

	public void setFile_Ext(String file_Ext) {
		this.file_Ext = file_Ext;
	}

	public void setFile_Date(Date file_Date) {
		this.file_Date = file_Date;
	}

	public void setFile_Type(String file_Type) {
		this.file_Type = file_Type;
	}

	public void setRef_No(int ref_No) {
		this.ref_No = ref_No;
	}

	public Attachment(int att_No, int file_No, String upload_Name, String origin_Name, String file_size,
			String file_Ext, Date file_Date, String file_Type, int ref_No) {
		super();
		this.att_No = att_No;
		this.file_No = file_No;
		this.upload_Name = upload_Name;
		this.origin_Name = origin_Name;
		this.file_size = file_size;
		this.file_Ext = file_Ext;
		this.file_Date = file_Date;
		this.file_Type = file_Type;
		this.ref_No = ref_No;
	}

	@Override
	public String toString() {
		return "Attachment [att_No=" + att_No + ", file_No=" + file_No + ", upload_Name=" + upload_Name
				+ ", origin_Name=" + origin_Name + ", file_size=" + file_size + ", file_Ext=" + file_Ext
				+ ", file_Date=" + file_Date + ", file_Type=" + file_Type + ", ref_No=" + ref_No + "]";
	}
	
	

}
