package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.Member;
import com.smhrd.model.MemberDAO;

public class AdminCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// 관리자 전용 공간!
		response.setCharacterEncoding("UTF-8");
		
		MemberDAO dao = new MemberDAO();
		ArrayList<Member> list = dao.selectMember();
		
		return "GoViewmember.do";
	}

}
