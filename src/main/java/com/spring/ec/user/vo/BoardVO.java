package com.spring.ec.user.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component("boardVO")
public class BoardVO {
	private int list_num;
	private int parent_num;
	private String category_code;
	private String user_id;
	private String image_fileName;
	private String u_title;
	private String u_content;
	private int hits;
	private int liked;
	private int bad;
	private Date reg_date;
	private Date mod_date;

	public BoardVO() {

	}

	public BoardVO(int list_num, int parent_num, String category_code, String user_id, String u_title, String u_content,
			String image_fileName, int hits, int liked, int bad, Date reg_date, Date mod_date) {

	}
	public int getList_num() {
		return list_num;
	}

	public void setList_num(int list_num) {
		this.list_num = list_num;
	}

	public int getParent_num() {
		return parent_num;
	}

	public void setParent_num(int parent_num) {
		this.parent_num = parent_num;
	}

	public String getCategory_code() {
		return category_code;
	}

	public void setCategory_code(String category_code) {
		this.category_code = category_code;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getImage_fileName() {
		return image_fileName;
	}

	public void setImage_fileName(String image_fileName) {
		this.image_fileName = image_fileName;
	}

	public String getU_title() {
		return u_title;
	}

	public void setU_title(String u_title) {
		this.u_title = u_title;
	}

	public String getU_content() {
		return u_content;
	}

	public void setU_content(String u_content) {
		this.u_content = u_content;
	}

	public int getHits() {
		return hits;
	}

	public void setHits(int hits) {
		this.hits = hits;
	}

	public int getLiked() {
		return liked;
	}

	public void setLiked(int liked) {
		this.liked = liked;
	}

	public int getBad() {
		return bad;
	}

	public void setBad(int bad) {
		this.bad = bad;
	}

	public Date getReg_date() {
		return reg_date;
	}

	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}

	public Date getMod_date() {
		return mod_date;
	}

	public void setMod_date(Date mod_date) {
		this.mod_date = mod_date;
	}
}
