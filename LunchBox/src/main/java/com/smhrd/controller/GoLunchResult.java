package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GoLunchResult implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
	
		
		return "WEB-INF/views/lunchbox/GoLunchResult.jsp";
	}

}
