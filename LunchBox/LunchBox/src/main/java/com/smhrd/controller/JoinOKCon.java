package com.smhrd.controller;

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
		String birthdate = request.getParameter("mb_Birthdate");
		System.out.println(id);
		System.out.println(pw);
		System.out.println(gender);
		System.out.println(birthdate);
		
		Member member = new Member();
		member.setMb_Id(id);
        member.setMb_Pw(pw);
        member.setMb_Gender(gender);
        member.setMb_Birthdate(birthdate);
        System.out.println(member);
        
        MemberDAO dao = new MemberDAO();
        int row = dao.insertMember(member);
        System.out.println(row);
		
		HttpSession session = request.getSession();
	 	session.setAttribute("sessionID", id);
	 	System.out.println(session);
	 	System.out.println("회원가입 성공!");
		
		return "member/Door";
	}
	
}
