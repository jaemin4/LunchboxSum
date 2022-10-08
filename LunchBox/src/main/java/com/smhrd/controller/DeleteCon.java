package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.Member;
import com.smhrd.model.MemberDAO;
import com.smhrd.model.Nutritionfact;
import com.smhrd.model.NutritionfactDAO;

public class DeleteCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		response.setCharacterEncoding("UTF-8");
        
		String id = request.getParameter("mb_ID");
        String pw = request.getParameter("mb_PW");
        System.out.println("당신의 아이디는 :"+id);
        System.out.println("당신의 비밀번호는 :"+pw);
        
        Nutritionfact nutritionfact = new Nutritionfact();
        nutritionfact.setMb_Id(id);
        
        NutritionfactDAO dAo = new NutritionfactDAO();
        int ro = dAo.deleteNutritionfact(nutritionfact);
        System.out.println(ro);
        
			if(ro>0) {
	        	System.out.println("영양소 테이블 정보 삭제 성공!");
			}else {
	        	System.out.println("오류 발생!");
			}
        
        Member member = new Member();
        member.setMb_Id(id);
        member.setMb_Pw(pw);
        
        MemberDAO dao = new MemberDAO();
        int row = dao.deleteMember(member);
        System.out.println(row);
        try {
			if(row>0) {
		        response.setContentType("text/html; charset=UTF-8");
		        PrintWriter out;
				out = response.getWriter();
				out.println("<script>alert('성공적으로 회원 탈퇴 되셨습니다!');location.href='Door.do';window.close();</script>");
	        	out.flush();
	        	out.close();
	        	System.out.println("회원 탈퇴 성공!");
			}else {
	        	System.out.println("오류 발생!");
	        	return "WEB-INF/views/member/Login_ok.jsp";
	        }
			} catch (IOException e) {
				e.printStackTrace();
			}
        	return null;
	}

}
