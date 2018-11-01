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

}
