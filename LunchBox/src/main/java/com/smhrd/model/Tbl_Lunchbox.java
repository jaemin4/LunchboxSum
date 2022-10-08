package com.smhrd.model;

public class Tbl_Lunchbox {

	
	private int lb_seq;
	
	private String lb_name;
	
	private String lb_img;
	
	private String mb_id;
	
	private String ld_date;
	
	public Tbl_Lunchbox() {}
	
	
	
	
	
	public Tbl_Lunchbox(int lb_seq, String lb_name, String lb_img, String mb_id, String ld_date, int lb_calories) {
		super();
		this.lb_seq = lb_seq;
		this.lb_name = lb_name;
		this.lb_img = lb_img;
		this.mb_id = mb_id;
		this.ld_date = ld_date;
		this.lb_calories = lb_calories;
	}
	
	

	public int getLb_seq() {
		return lb_seq;
	}

	public void setLb_seq(int lb_seq) {
		this.lb_seq = lb_seq;
	}

	public String getLb_name() {
		return lb_name;
	}

	public void setLb_name(String lb_name) {
		this.lb_name = lb_name;
	}

	public String getLb_img() {
		return lb_img;
	}

	public void setLb_img(String lb_img) {
		this.lb_img = lb_img;
	}

	public String getMb_id() {
		return mb_id;
	}

	public void setMb_id(String mb_id) {
		this.mb_id = mb_id;
	}

	public String getLd_date() {
		return ld_date;
	}

	public void setLd_date(String ld_date) {
		this.ld_date = ld_date;
	}

	public int getLb_calories() {
		return lb_calories;
	}

	public void setLb_calories(int lb_calories) {
		this.lb_calories = lb_calories;
	}

	private int lb_calories;
	
	
	
	
	
	
}
