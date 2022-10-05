package com.smhrd.controller;

import java.io.PrintWriter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.smhrd.model.MemberDAO;
import com.smhrd.model.Member;

public class LoginCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
			
			response.setCharacterEncoding("UTF-8");
			
	        String mb_Id = request.getParameter("mb_Id");
	        String mb_Pw = request.getParameter("mb_Pw");
	        // 값을 잘 받아오고 있는지 확인!
	        System.out.println(mb_Id);
	        System.out.println(mb_Pw);
	        
	        Member member = new Member();
	        member.setMb_Id(mb_Id);
	        member.setMb_Pw(mb_Pw);
	        System.out.println(mb_Id);
	        MemberDAO dao = new MemberDAO();
	        int row = dao.loginCheck(member);
	        System.out.println(row);
	        try {
	        	if(row>0) {
		        	HttpSession session = request.getSession();
		        	session.setAttribute("session", mb_Id);
		        	System.out.println(session);
		        	System.out.println("로그인 성공");
		        	return "member/Login_ok";
		        }else {
		        	PrintWriter out = response.getWriter();
		        	out.println("<script>alert('회원정보가 없습니다');</script>");
		        	out.close();
		        	System.out.println("로그인 실패");
		        	return "member/Door";
		        }
	        }catch(Exception e) {
	        	System.out.println("에러 발생");
	        	return null;
	        }
			
	        	
	        
	        
	        
		
	}
}