package com.finalProject.enjoin.informBoard.model.vo;

import org.springframework.web.multipart.MultipartFile;

public class InformBoardFiles {
	private MultipartFile fileImg1;
	private MultipartFile fileImg2;
	private MultipartFile fileImg3;
	
	public InformBoardFiles() {
		super();
	}
	public InformBoardFiles(MultipartFile fileImg1, MultipartFile fileImg2, MultipartFile fileImg3) {
		super();
		this.fileImg1 = fileImg1;
		this.fileImg2 = fileImg2;
		this.fileImg3 = fileImg3;
	}
	public MultipartFile getFileImg1() {
		return fileImg1;
	}
	public void setFileImg1(MultipartFile fileImg1) {
		this.fileImg1 = fileImg1;
	}
	public MultipartFile getFileImg2() {
		return fileImg2;
	}
	public void setFileImg2(MultipartFile fileImg2) {
		this.fileImg2 = fileImg2;
	}
	public MultipartFile getFileImg3() {
		return fileImg3;
	}
	public void setFileImg3(MultipartFile fileImg3) {
		this.fileImg3 = fileImg3;
	}
	@Override
	public String toString() {
		return "InformBoardFiles [fileImg1=" + fileImg1 + ", fileImg2=" + fileImg2 + ", fileImg3=" + fileImg3 + "]";
	}
	
}
