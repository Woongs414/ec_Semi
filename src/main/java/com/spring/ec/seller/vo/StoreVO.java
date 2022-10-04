package com.spring.ec.seller.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component("storeVO")
public class StoreVO {

	private int storeInfo_num;
	private String seller_id;
	private String image_fileName;
	private String store_introduce;
	private String openTime;
	private String closeDay;
	private String store_nic;
	private String store_benefit;
	private Date reg_date;
	private Date mod_date;

	public StoreVO() {

	}

	public StoreVO(int storeInfo_num, String seller_id, String image_fileName, String store_introduce, String openTime, String closeDay, String store_nic,String store_benefit, Date reg_date, Date mod_date) {
		this.storeInfo_num = storeInfo_num;
		this.seller_id = seller_id;
		this.image_fileName= image_fileName;
		this.store_introduce = store_introduce;
		this.openTime = openTime;
		this.closeDay = closeDay;
		this.store_nic = store_nic;
		this.store_benefit = store_benefit;
		this.reg_date = reg_date;
		this.mod_date = mod_date;
	}

	public int getStoreInfo_num() {
		return storeInfo_num;
	}

	public void setStoreInfo_num(int storeInfo_num) {
		this.storeInfo_num = storeInfo_num;
	}

	public String getSeller_id() {
		return seller_id;
	}

	public void setSeller_id(String seller_id) {
		this.seller_id = seller_id;
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



}
