package com.smhrd.model;

import java.util.Date;

public class Member {

	// 사용자 아이디 
    private String mb_Id;
    
    private String mb_Idck;
    
    public String getMb_Idck() {
		return mb_Idck;
	}

	public void setMb_Idck(String mb_Idck) {
		this.mb_Idck = mb_Idck;
	}

	// 사용자 비밀번호 
    private String mb_Pw;

    // 사용자 생년월일 
    private String mb_Birthdate;

    // 사용자 성별 
    private String mb_Gender;

    // 사용자 가입일자 
    private Date mb_Joindate;

    // 사용자 유형 
    private String mb_Type;


	public String getMb_Id() {
		return mb_Id;
	}

	public void setMb_Id(String mb_Id) {
		this.mb_Id = mb_Id;
	}

	public String getMb_Pw() {
		return mb_Pw;
	}

	public void setMb_Pw(String mb_Pw) {
		this.mb_Pw = mb_Pw;
	}

	public String getMb_Birthdate() {
		return mb_Birthdate;
	}

	public void setMb_Birthdate(String mb_Birthdate) {
		this.mb_Birthdate = mb_Birthdate;
	}

	public String getMb_Gender() {
		return mb_Gender;
	}

	public void setMb_Gender(String mb_Gender) {
		this.mb_Gender = mb_Gender;
	}

	public Date getMb_Joindate() {
		return mb_Joindate;
	}

	public void setMb_Joindate(Date mb_Joindate) {
		this.mb_Joindate = mb_Joindate;
	}

	public String getMb_Type() {
		return mb_Type;
	}

	public void setMb_Type(String mb_Type) {
		this.mb_Type = mb_Type;
	}
	
	
}
