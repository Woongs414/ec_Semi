package com.spring.ec.seller.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component("sellerMemberVO")
public class MemberVO {

	private int user_no;
	private String user_id;
	private String user_pwd;
	private String pwd_ck;
	private String tel;
	private String user_name;
	private String user_email;
	private Date birth;
	private char gender;

	public MemberVO() {

	}

	public MemberVO(int user_no, String user_id, String user_pwd, String pwd_ck, String tel, String user_name, String user_email, Date birth, char gender) {
		this.user_no = user_no;
		this.user_id = user_id;
		this.user_pwd = user_pwd;
		this.pwd_ck = pwd_ck;
		this.tel = tel;
		this.user_name = user_name;
		this.user_email = user_email;
		this.birth = birth;
		this.gender = gender;
	}

	public int getUser_no() {
		return user_no;
	}

	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_pwd() {
		return user_pwd;
	}

	public void setUser_pwd(String user_pwd) {
		this.user_pwd = user_pwd;
	}

	public String getPwd_ck() {
		return pwd_ck;
	}

	public void setPwd_ck(String pwd_ck) {
		this.pwd_ck = pwd_ck;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public Date getBirth() {
		return birth;
	}

	public void setBirth(Date birth) {
		this.birth = birth;
	}

	public char getGender() {
		return gender;
	}

	public void setGender(char gender) {
		this.gender = gender;
	}

}
