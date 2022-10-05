package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.smhrd.model.Member;
import com.smhrd.model.MemberDAO;

public class JoinOKCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		response.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("mb_Id");
		String pw = request.getParameter("mb_Pw");
		String gender = request.getParameter("mb_Gender");
		String yy = request.getParameter("yy");
		String mm = request.getParameter("mm");
		String dd = request.getParameter("dd");
		System.out.println(id);
		System.out.println(pw);
		System.out.println(gender);
		System.out.println(yy+mm+dd);
		
		Member member = new Member();
		member.setMb_Id(id);
        member.setMb_Pw(pw);
        member.setMb_Gender(gender);
        member.setMb_Birthdate(yy+mm+dd);
        System.out.println(member);
        
        MemberDAO dao = new MemberDAO();
        int row = dao.insertMember(member);
        System.out.println(row);
		
		HttpSession session = request.getSession();
	 	session.setAttribute("sessionID", id);
	 	System.out.println(session);
	 	System.out.println("회원가입 성공!");
	 	
		try {
			response.setContentType("text/html; charset=UTF-8");
	        PrintWriter out;
			out = response.getWriter();
			out.println("<script>alert('회원가입 성공!');location.href='Door.do';</script>");
	    	out.flush();
	    	out.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return null;
	}
	
}
