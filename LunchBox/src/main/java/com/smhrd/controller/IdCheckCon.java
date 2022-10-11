package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.Member;
import com.smhrd.model.MemberDAO;

public class IdCheckCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		response.setCharacterEncoding("UTF-8");
		
		String idck = request.getParameter("mb_Idck");
		System.out.println(idck);
		
		Member member = new Member();
        member.setMb_Idck(idck);
        
        MemberDAO dao = new MemberDAO();
        int row = dao.idCheck(idck);
        System.out.println(row);
        
		try {
			if(row>0) {
		        response.setContentType("text/html; charset=UTF-8");
		        PrintWriter out;
				out = response.getWriter();
				out.println("<script>alert('중복된 아이디입니다! 다른 아이디를 사용해주세요!');</script>");
	        	out.flush();
	        	out.close();
	        	System.out.println("중복된 아이디입니다!");
			}else {
				response.setContentType("text/html; charset=UTF-8");
		        PrintWriter out;
				out = response.getWriter();
				//out.println("<script>alert('사용 가능한 아이디입니다!');window.close();</script>");
				out.println("<script>opener.window.document.insertMember.mb_Id.value = '" + idck + "';alert('사용 가능한 아이디입니다!');window.close();</script>");
	        	out.flush();
	        	out.close();
	        	System.out.println("사용 가능한 아이디입니다!");
	        }
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
        	return null;
	}

}
