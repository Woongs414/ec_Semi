package com.spring.ec.admin.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component("adminMeberVO")
public class MemberVO {
	private int admin_num;
	private String admin_id;
	private String admin_pw;
	private String admin_name;
	private String admin_tel;
	private String admin_email;
	private int level;
	private Date reg_date;
	private Date mod_date;
	
	public MemberVO() {
		
	}
	
	public MemberVO(int admin_num, String admin_id, String admin_pw, String admin_name, String admin_tel, String admin_email, int level, Date reg_date, Date mod_date) {
		this.admin_num = admin_num;
		this.admin_id = admin_id;
		this.admin_pw = admin_pw;
		this.admin_name = admin_name;
		this.admin_tel = admin_tel;
		this.admin_email = admin_email;
		this.level = level;
		this.reg_date = reg_date;
		this.mod_date = mod_date;
	}
	
	public int getAdmin_num() {
		return admin_num;
	}

	public void setAdmin_num(int admin_num) {
		this.admin_num = admin_num;
	}

	public String getAdmin_id() {
		return admin_id;
	}

	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}

	public String getAdmin_pw() {
		return admin_pw;
	}

	public void setAdmin_pw(String admin_pw) {
		this.admin_pw = admin_pw;
	}

	public String getAdmin_name() {
		return admin_name;
	}

	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name;
	}

	public String getAdmin_tel() {
		return admin_tel;
	}

	public void setAdmin_tel(String admin_tel) {
		this.admin_tel = admin_tel;
	}

	public String getAdmin_email() {
		return admin_email;
	}

	public void setAdmin_email(String admin_email) {
		this.admin_email = admin_email;
	}

	public int getLevel() {
		return level;
	}

	public void setLevel(int level) {
		this.level = level;
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
