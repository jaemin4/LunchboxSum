package com.smhrd.model;

public class Lunchbox {
	
	// 도시락 순번 
    private Double lb_Seq;

    // 도시락 이름 
    private String lb_Name;

    // 도시락 이미지 
    private String lb_Img;

    // 사용자 아이디 
    private String mb_Id;

    // 완성 날짜 
    private String ld_Date;

    // 총 칼로리 
    private Double lb_Calories;

	public Double getLb_Seq() {
		return lb_Seq;
	}

	public void setLb_Seq(Double lb_Seq) {
		this.lb_Seq = lb_Seq;
	}

	public String getLb_Name() {
		return lb_Name;
	}

	public void setLb_Name(String lb_Name) {
		this.lb_Name = lb_Name;
	}

	public String getLb_Img() {
		return lb_Img;
	}

	public void setLb_Img(String lb_Img) {
		this.lb_Img = lb_Img;
	}

	public String getMb_Id() {
		return mb_Id;
	}

	public void setMb_Id(String mb_Id) {
		this.mb_Id = mb_Id;
	}

	public String getLd_Date() {
		return ld_Date;
	}

	public void setLd_Date(String ld_Date) {
		this.ld_Date = ld_Date;
	}

	public Double getLb_Calories() {
		return lb_Calories;
	}

	public void setLb_Calories(Double lb_Calories) {
		this.lb_Calories = lb_Calories;
	}
}
