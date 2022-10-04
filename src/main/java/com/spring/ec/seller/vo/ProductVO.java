package com.spring.ec.seller.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component("productVO")
public class ProductVO {

	private int pro_num;
	private String category_code;
	private String seller_id;
	private String pro_name;
	private int pro_price;
	private int pro_stock;
	private String pro_desc;
	private int pro_count;
	private int sales;
	private double commision;
	private Date reg_date;
	private Date mod_date;
	
	
	public ProductVO() {

	}

	public ProductVO(int pro_num, String category_code, String seller_id, String pro_name, int pro_price, int pro_stock, String pro_desc,int pro_count,int sales,double commision,Date reg_date, Date mod_date) {
		this.pro_num = pro_num;
		this.category_code = category_code;
		this.seller_id= seller_id;
		this.pro_name = pro_name;
		this.pro_price = pro_price;
		this.pro_stock = pro_stock;
		this.pro_desc = pro_desc;
		this.pro_count = pro_count;
		this.sales = sales;
		this.commision = commision;
		this.reg_date = reg_date;
		this.mod_date = mod_date;
	}

	public int getPro_num() {
		return pro_num;
	}

	public void setPro_num(int pro_num) {
		this.pro_num = pro_num;
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

	public int getPro_stock() {
		return pro_stock;
	}

	public void setPro_stock(int pro_stock) {
		this.pro_stock = pro_stock;
	}

	public String getPro_desc() {
		return pro_desc;
	}

	public void setPro_desc(String pro_desc) {
		this.pro_desc = pro_desc;
	}

	public int getPro_count() {
		return pro_count;
	}

	public void setPro_count(int pro_count) {
		this.pro_count = pro_count;
	}

	public int getSales() {
		return sales;
	}

	public void setSales(int sales) {
		this.sales = sales;
	}

	public double getCommision() {
		return commision;
	}

	public void setCommision(double commision) {
		this.commision = commision;
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
