package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

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
	        MemberDAO dao = new MemberDAO();
	        ArrayList<Member> list = dao.selectGetgenderage(member);
			for(int i = 0; i<list.size(); i++) {
				//리스트 안에 값에 대한 null 체크
				if(list.get(i) == null) {
					System.out.println("list["+i+"]의 값은 null 입니다. ");
				}
			}
	        try {
	        	if(list != null) {
	        		response.setContentType("text/html; charset=UTF-8");
		        	HttpSession session = request.getSession();
		        	session.setAttribute("sessionID", list.get(0).getMb_Id());
		        	 if(list.get(0).getMb_Gender().equals("M")) {
		 	        	String man = "남";
		 	        	session.setAttribute("sessionGender",man);
		 	        }else if(list.get(0).getMb_Gender().equals("F")) {
		 	        	String woman = "여";
		 	        	session.setAttribute("sessionGender",woman);
		 	        }
		        	session.setAttribute("sessionBirthdate", (((20221008-Integer.parseInt(list.get(0).getMb_Birthdate()))/10000)+1));
		        	System.out.println("세션에 저장된 아이디는 "+session.getAttribute("sessionID")+"입니다.");
		        	System.out.println("세션에 저장된 성별은 "+session.getAttribute("sessionGender")+"입니다.");
		        	System.out.println("세션에 저장된 나이는 "+session.getAttribute("sessionBirthdate")+"입니다.");
		        	System.out.println("로그인 성공");
		        	return "WEB-INF/views/lunchbox/Main.jsp";
		        }
	        }catch(Exception e) {
	        	response.setContentType("text/html; charset=UTF-8");
	        	PrintWriter out;
				try {
					out = response.getWriter();
					out.println("<script>alert('회원정보가 없습니다');location.href='Door.do';</script>");
		        	out.flush();
		        	out.close();
		        	System.out.println("로그인 실패");
		        	return null;
				} catch (IOException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
	        	
	        }
			return null;
			
	        
	}
}