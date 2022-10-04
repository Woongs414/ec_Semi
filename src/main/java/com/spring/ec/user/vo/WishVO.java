package com.spring.ec.user.vo;



import org.springframework.stereotype.Component;

@Component("wishVO")
public class WishVO {

	private int wish_num;
	private String category_code;
	private String user_id;
	private String seller_id;
	private int wish_sum;
	
	public WishVO() {

	}

	public WishVO(int wish_num, String category_code,String user_id, String seller_id,int wish_sum) {
		this.wish_num = wish_num;
		this.category_code= category_code;
		this.user_id = user_id;
		this.seller_id = seller_id;
		this.wish_sum = wish_sum;
	}

	public int getWish_num() {
		return wish_num;
	}

	public void setWish_num(int wish_num) {
		this.wish_num = wish_num;
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

	public String getSeller_id() {
		return seller_id;
	}

	public void setSeller_id(String seller_id) {
		this.seller_id = seller_id;
	}

	public int getWish_sum() {
		return wish_sum;
	}

	public void setWish_sum(int wish_sum) {
		this.wish_sum = wish_sum;
	}


	

}
