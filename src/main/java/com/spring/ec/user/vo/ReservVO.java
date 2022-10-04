package com.spring.ec.user.vo;

import org.springframework.stereotype.Component;

@Component("reservVO")
public class ReservVO {
	private String seller_id;
	private String store_nic;
	private String seller_tel;
	private String seller_name;
	private String seller_addr;
	private String seller_bizReg;
	private String open_time;
	private String close_time;
	private int min_People;
	private int max_People;
	private String store_introduce;
	
	public ReservVO() {
		
	}
	
	public ReservVO(String seller_id,String store_nic,String seller_tel,
			String seller_name,String seller_addr,String seller_bizReg,
			String open_time,String close_time,int min_People,int max_People,
			String store_introduce) {
		
	}

	public String getSeller_id() {
		return seller_id;
	}

	public void setSeller_id(String seller_id) {
		this.seller_id = seller_id;
	}

	public String getStore_nic() {
		return store_nic;
	}

	public void setStore_nic(String store_nic) {
		this.store_nic = store_nic;
	}

	public String getSeller_tel() {
		return seller_tel;
	}

	public void setSeller_tel(String seller_tel) {
		this.seller_tel = seller_tel;
	}

	public String getSeller_name() {
		return seller_name;
	}

	public void setSeller_name(String seller_name) {
		this.seller_name = seller_name;
	}

	public String getSeller_addr() {
		return seller_addr;
	}

	public void setSeller_addr(String seller_addr) {
		this.seller_addr = seller_addr;
	}

	public String getSeller_bizReg() {
		return seller_bizReg;
	}

	public void setSeller_bizReg(String seller_bizReg) {
		this.seller_bizReg = seller_bizReg;
	}

	public String getOpen_time() {
		return open_time;
	}

	public void setOpen_time(String open_time) {
		this.open_time = open_time;
	}

	public String getClose_time() {
		return close_time;
	}

	public void setClose_time(String close_time) {
		this.close_time = close_time;
	}

	public int getMin_People() {
		return min_People;
	}

	public void setMin_People(int min_People) {
		this.min_People = min_People;
	}

	public int getMax_People() {
		return max_People;
	}

	public void setMax_People(int max_People) {
		this.max_People = max_People;
	}

	public String getStore_introduce() {
		return store_introduce;
	}

	public void setStore_introduce(String store_introduce) {
		this.store_introduce = store_introduce;
	}
	
	
	
}
