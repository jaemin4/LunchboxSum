package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.Member;
import com.smhrd.model.MemberDAO;

public class UpdateCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// 회원 정보 수정을 처리하는 공간!
		response.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		String userid = (String)session.getAttribute("session");
        String gender = request.getParameter("mb_gender");
        String yy = request.getParameter("yy");
		String mm = request.getParameter("mm");
		String dd = request.getParameter("dd");
        System.out.println("당신의 아이디는 "+userid);
        System.out.println(gender);
        System.out.println(yy+mm+dd);
        
        Member member = new Member();
        member.setMb_Id(userid);
        member.setMb_Gender(gender);
        member.setMb_Birthdate(yy+mm+dd);
        
        MemberDAO dao = new MemberDAO();
        int row = dao.updateMember(member);
        System.out.println(row);
        
		try {
			if(row>0) {
		        System.out.println("회원 정보 수정 성공!");
				response.setContentType("text/html; charset=UTF-8");
	        	PrintWriter out = response.getWriter();
	        	out.println("<script>alert('정보수정이 완료되었습니다');location.href='Door.do';</script>");
	        	out.flush();
	        	out.close();
			}else {
	        	System.out.println("오류가 발생했습니다.");
	        	return "member/Edit_userinfo";
	        }
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
        	return null;
        
		
	}

}
