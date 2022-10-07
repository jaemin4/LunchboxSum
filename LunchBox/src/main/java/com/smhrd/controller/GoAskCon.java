package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GoAskCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		return "WEB-INF/views/etc/Ask.jsp";
	}

}
