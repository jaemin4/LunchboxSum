package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GoUpdateCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		//회원 정보 수정창으로 이동시켜주는 곳!
		return "WEB-INF/views/member/Edit_userinfo.jsp";
	}

}
