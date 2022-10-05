package com.smhrd.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.MemberDAO;
import com.smhrd.model.Member;

public class LoginCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
			
			try {
				request.setCharacterEncoding("UTF-8");
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
	        String id = request.getParameter("mbId");
	        String pw = request.getParameter("mbPw");

	        MemberDAO dao = new MemberDAO();
	        Member dto = new Member(id,pw);
	        int loginDto = dao.loginCheck(dto);

	        if (loginDto > 0) {

				HttpSession session = request.getSession();
				session.setAttribute("loginDto", loginDto);
				
			}
	        return "member/Login_ok";
	        
		
		
	}
}