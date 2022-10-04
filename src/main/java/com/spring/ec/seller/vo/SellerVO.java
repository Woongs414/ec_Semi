package com.spring.ec.seller.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component("sellerVO")
public class SellerVO {

	private int seller_num;
	private String category_code;
	private String seller_id;
	private String seller_pw;
	private String seller_tel;
	private String seller_bizReg;
	private String seller_name;
	private String seller_email;
	private String seller_addr;
	private String bizReg_image_name;
	private String area;
	private String keyword;
	private int storeInfo_num;
	private String image_fileName;
	private String store_introduce;
	private String openTime;
	private String closeDay;
	private String store_nic;
	private String store_benefit;
	private int pro_num;
	private String pro_name;
	private int pro_price;
	private Date reg_date;
	private Date mod_date;
	
	
	public SellerVO() {

	}

	public SellerVO(int seller_num, String category_code, String seller_id, String seller_pw, String seller_tel, String seller_bizReg, String seller_name,String seller_email,String seller_addr,String bizReg_image_name,String area,String keyword,int storeInfo_num, String image_fileName, String store_introduce, String openTime, String closeDay, String store_nic,String store_benefit,	int pro_num, String pro_name, int pro_price, Date reg_date, Date mod_date) {
		this.seller_num = seller_num;
		this.category_code = category_code;
		this.seller_id= seller_id;
		this.seller_pw = seller_pw;
		this.seller_tel = seller_tel;
		this.seller_bizReg = seller_bizReg;
		this.seller_name = seller_name;
		this.seller_email = seller_email;
		this.seller_addr = seller_addr;
		this.bizReg_image_name = bizReg_image_name;
		this.keyword = keyword;
		this.storeInfo_num = storeInfo_num;
		this.image_fileName = image_fileName;
		this.store_introduce = store_introduce;
		this.openTime = openTime;
		this.closeDay = closeDay;
		this.store_nic = store_nic;
		this.store_benefit = store_benefit;
		this.pro_num = pro_num;
		this.pro_name = pro_name;
		this.pro_price = pro_price;
		this.reg_date = reg_date;
		this.mod_date = mod_date;
	}

	public int getSeller_num() {
		return seller_num;
	}

	public void setSeller_num(int seller_num) {
		this.seller_num = seller_num;
	}

	public String getCategory_code() {
		return category_code;
	}

	public void setCategory_code(String category_code) {
		this.category_code = category_code;
	}

	public String getSeller_id() {
		return seller_id;
	}

	public void setSeller_id(String seller_id) {
		this.seller_id = seller_id;
	}

	public String getSeller_pw() {
		return seller_pw;
	}

	public void setSeller_pw(String seller_pw) {
		this.seller_pw = seller_pw;
	}

	public String getSeller_tel() {
		return seller_tel;
	}

	public void setSeller_tel(String seller_tel) {
		this.seller_tel = seller_tel;
	}

	public String getSeller_bizReg() {
		return seller_bizReg;
	}

	public void setSeller_bizReg(String seller_bizReg) {
		this.seller_bizReg = seller_bizReg;
	}

	public String getSeller_name() {
		return seller_name;
	}

	public void setSeller_name(String seller_name) {
		this.seller_name = seller_name;
	}

	public String getSeller_email() {
		return seller_email;
	}

	public void setSeller_email(String seller_email) {
		this.seller_email = seller_email;
	}

	public String getSeller_addr() {
		return seller_addr;
	}

	public void setSeller_addr(String seller_addr) {
		this.seller_addr = seller_addr;
	}

	public String getBizReg_image_name() {
		return bizReg_image_name;
	}

	public void setBizReg_image_name(String bizReg_image_name) {
		this.bizReg_image_name = bizReg_image_name;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public int getStoreInfo_num() {
		return storeInfo_num;
	}

	public void setStoreInfo_num(int storeInfo_num) {
		this.storeInfo_num = storeInfo_num;
	}

	public String getImage_fileName() {
		return image_fileName;
	}

	public void setImage_fileName(String image_fileName) {
		this.image_fileName = image_fileName;
	}

	public String getStore_introduce() {
		return store_introduce;
	}

	public void setStore_introduce(String store_introduce) {
		this.store_introduce = store_introduce;
	}

	public String getOpenTime() {
		return openTime;
	}

	public void setOpenTime(String openTime) {
		this.openTime = openTime;
	}

	public String getCloseDay() {
		return closeDay;
	}

	public void setCloseDay(String closeDay) {
		this.closeDay = closeDay;
	}

	public String getStore_nic() {
		return store_nic;
	}

	public void setStore_nic(String store_nic) {
		this.store_nic = store_nic;
	}

	public String getStore_benefit() {
		return store_benefit;
	}

	public void setStore_benefit(String store_benefit) {
		this.store_benefit = store_benefit;
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

	public int getPro_num() {
		return pro_num;
	}

	public void setPro_num(int pro_num) {
		this.pro_num = pro_num;
	}

	public String getPro_name() {
		return pro_name;
	}

	public void setPro_name(String pro_name) {
		this.pro_name = pro_name;
	}

	public int getPro_price() {
		return pro_price;
	}

	public void setPro_price(int pro_price) {
		this.pro_price = pro_price;
	}

	

}
