package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.Member;
import com.smhrd.model.MemberDAO;

public class SearchPwCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// 비밀번호 찾기 기능을 처리하는 공간!
		response.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("Id");
		String y = request.getParameter("y");
		String m = request.getParameter("m");
		String d = request.getParameter("d");
		System.out.println("당신의 id는 "+id);
		System.out.println("당신의 생년월일은 "+y+m+d);
		
		Member member = new Member();
		member.setMb_Id(id);
        member.setMb_Birthdate(y+m+d);
        
        System.out.println(member.getMb_Id());
        System.out.println(member.getMb_Birthdate());
        System.out.println(member);
        
        MemberDAO dao = new MemberDAO();
        Member row = dao.searchpassword(member);
        try {
			if(row != null) {
				System.out.println("당신의 비밀번호는 "+row.getMb_Pw());
		        response.setContentType("text/html; charset=UTF-8");
		        PrintWriter out;
				out = response.getWriter();
				out.println("<script>alert('당신의 비밀번호는 "+row.getMb_Pw()+" 입니다.'); window.close();</script>");
	        	out.flush();
	        	out.close();
	        	System.out.println("비밀 번호가 성공적으로 조회되었습니다.!");
			}else{
				response.setContentType("text/html; charset=UTF-8");
		        PrintWriter out;
				out = response.getWriter();
				out.println("<script>alert('오류가 발생했습니다.!');window.close();</script>");
	        	out.flush();
	        	out.close();
	        	System.out.println("오류 발생!");
	        }
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
        	return null;
	}

}
