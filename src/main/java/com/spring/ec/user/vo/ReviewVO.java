package com.spring.ec.user.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component("reviewVO")
public class ReviewVO {

	private int review_num;
	private String user_id;
	private int pro_num;
	private String seller_id;
	private String image_fileName;
	private String content;
	private float rating;
	private float rating_percent;
	private float rating_avg;
	private int review_count;
	private int liked;
	private Date reg_date;
	private Date mod_date;
	
	
	public ReviewVO() {

	}

	public ReviewVO(int review_num, String user_id, int pro_num, String seller_id, String image_fileName, String content, float rating,float rating_percent, float rating_avg,int review_count, int liked,Date reg_date, Date mod_date) {
		this.review_num = review_num;
		this.user_id= user_id;
		this.pro_num = pro_num;
		this.seller_id = seller_id;
		this.image_fileName = image_fileName;
		this.content = content;
		this.rating = rating;
		this.rating_percent = rating_percent;
		this.rating_avg = rating_avg;
		this.review_count = review_count;
		this.liked = liked;
		this.reg_date = reg_date;
		this.mod_date = mod_date;
	}

	public int getReview_num() {
		return review_num;
	}

	public void setReview_num(int review_num) {
		this.review_num = review_num;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public int getPro_num() {
		return pro_num;
	}

	public void setPro_num(int pro_num) {
		this.pro_num = pro_num;
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

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public float getRating() {
		return rating;
	}

	public void setRating(float rating) {
		this.rating = rating;
	}
	

	public float getRating_percent() {
		return rating_percent;
	}

	public void setRating_percent(float rating_percent) {
		this.rating_percent = rating_percent;
	}

	public float getRating_avg() {
		return rating_avg;
	}

	public void setRating_avg(float rating_avg) {
		this.rating_avg = rating_avg;
	}
	

	public int getReview_count() {
		return review_count;
	}

	public void setReview_count(int review_count) {
		this.review_count = review_count;
	}

	public int getLiked() {
		return liked;
	}

	public void setLiked(int liked) {
		this.liked = liked;
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
