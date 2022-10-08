package com.smhrd.controller;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.LunchboxDAO;
import com.smhrd.model.Member;
import com.smhrd.model.MemberDAO;
import com.smhrd.model.Recipe;

public class GoLunchCon implements Controller{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		System.out.println("이동중");

        return "WEB-INF/views/lunchbox/LunchBox.jsp";
	}

}
