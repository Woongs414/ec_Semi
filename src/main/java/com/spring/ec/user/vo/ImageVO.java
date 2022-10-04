package com.spring.ec.user.vo;

import org.springframework.stereotype.Component;

@Component("imageVO")
public class ImageVO {
	private int image_num;
	private int list_num;
	private String origin_fileName;
	private String image_fileName;
	
	public ImageVO(){
		
	}
	
	public ImageVO(int image_num, int list_num, String origin_fileName, String image_fileName) {
		this.image_num = image_num;
		this.list_num = list_num;
		this.origin_fileName = origin_fileName;
		this.image_fileName = image_fileName;
	}

	public int getImage_num() {
		return image_num;
	}

	public void setImage_num(int image_num) {
		this.image_num = image_num;
	}

	public int getList_num() {
		return list_num;
	}

	public void setList_num(int list_num) {
		this.list_num = list_num;
	}

	public String getOrigin_fileName() {
		return origin_fileName;
	}

	public void setOrigin_fileName(String origin_fileName) {
		this.origin_fileName = origin_fileName;
	}

	public String getImage_fileName() {
		return image_fileName;
	}

	public void setImage_fileName(String image_fileName) {
		this.image_fileName = image_fileName;
	}
	
}
