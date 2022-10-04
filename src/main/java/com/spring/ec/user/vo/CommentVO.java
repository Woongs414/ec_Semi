package com.spring.ec.user.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component("commentVO")
public class CommentVO {
	private int comment_num;
	private int list_num;
	private String comments;
	private String comment_id;
	private int parent_num;
	private Date reg_date;
	private Date mod_date;
	private int level;
	
	public CommentVO() {
		
	}
	
	public CommentVO(int comment_num, int list_num, String comments, String comment_id, int parent_num, Date reg_date, Date mod_date, int level) {
		this.comment_num = comment_num;
		this.list_num = list_num;
		this.comments = comments;
		this.comment_id = comment_id;
		this.reg_date = reg_date;
		this.mod_date = mod_date;
		this.parent_num = parent_num;
		this.level = level;
		
	}

	public int getLevel() {
		return level;
	}

	public void setLevel(int level) {
		this.level = level;
	}

	public int getParent_num() {
		return parent_num;
	}

	public void setParent_num(int parent_num) {
		this.parent_num = parent_num;
	}

	public int getComment_num() {
		return comment_num;
	}

	public void setComment_num(int comment_num) {
		this.comment_num = comment_num;
	}

	public int getList_num() {
		return list_num;
	}

	public void setList_num(int list_num) {
		this.list_num = list_num;
	}

	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

	public String getComment_id() {
		return comment_id;
	}

	public void setComment_id(String comment_id) {
		this.comment_id = comment_id;
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
