package com.smhrd.model;

import java.util.Date;

public class Member {

	// 사용자 아이디 
    private String mbId;

    // 사용자 비밀번호 
    private String mbPw;

    // 사용자 생년월일 
    private String mbBirthdate;

    // 사용자 성별 
    private String mbGender;

    // 사용자 가입일자 
    private Date mbJoindate;

    // 사용자 유형 
    private String mbType;

	public Member(String mbId, String mbPw) {
		super();
		this.mbId = mbId;
		this.mbPw = mbPw;
	}

	public String getMbId() {
		return mbId;
	}

	public void setMbId(String mbId) {
		this.mbId = mbId;
	}

	public String getMbPw() {
		return mbPw;
	}

	public void setMbPw(String mbPw) {
		this.mbPw = mbPw;
	}

	public String getMbBirthdate() {
		return mbBirthdate;
	}

	public void setMbBirthdate(String mbBirthdate) {
		this.mbBirthdate = mbBirthdate;
	}

	public String getMbGender() {
		return mbGender;
	}

	public void setMbGender(String mbGender) {
		this.mbGender = mbGender;
	}

	public Date getMbJoindate() {
		return mbJoindate;
	}

	public void setMbJoindate(Date mbJoindate) {
		this.mbJoindate = mbJoindate;
	}

	public String getMbType() {
		return mbType;
	}

	public void setMbType(String mbType) {
		this.mbType = mbType;
	}
	// Member 모델 복사
    public void CopyData(Member param)
    {
        this.mbId = param.getMbId();
        this.mbPw = param.getMbPw();
        this.mbBirthdate = param.getMbBirthdate();
        this.mbGender = param.getMbGender();
        this.mbJoindate = param.getMbJoindate();
        this.mbType = param.getMbType();
    }
    
}
