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
        if(Integer.parseInt(dd) < 10) {
        	member.setMb_Birthdate(yy+mm+0+dd);
        }else {
        	member.setMb_Birthdate(yy+mm+dd);
        }
        MemberDAO dao = new MemberDAO();
        int row = dao.updateMember(member);
        System.out.println(row);
        
        Nutritionfact nutritionfact = new Nutritionfact();
        nutritionfact.setMb_Id(userid);
        if(member.getMb_Gender().equals("M")){
	 		System.out.println("남자입니다.");
	 		if(Integer.parseInt(yy) < 2004 & Integer.parseInt(yy) > 1993) {
	 			// 20~29세(20대)
	 			System.out.println("20대입니다.");
	 			nutritionfact.setR_Carbohydrate((double)438);
	 			nutritionfact.setR_Protein((double)70);
	 			nutritionfact.setR_Fat((double)55);
	 			nutritionfact.setR_Calories((double)2500);
	 		}else if(Integer.parseInt(yy) < 1994 & Integer.parseInt(yy) > 1983) {
	 			// 30~39세(30대)
	 			System.out.println("30대입니다.");
	 			nutritionfact.setR_Carbohydrate((double)420);
	 			nutritionfact.setR_Protein((double)60);
	 			nutritionfact.setR_Fat((double)53);
	 			nutritionfact.setR_Calories((double)2400);
	 		}else if(Integer.parseInt(yy) < 1984 & Integer.parseInt(yy) > 1973) {
	 			// 40~49세(40대)
	 			System.out.println("40대입니다.");
	 			nutritionfact.setR_Carbohydrate((double)420);
	 			nutritionfact.setR_Protein((double)55);
	 			nutritionfact.setR_Fat((double)43);
	 			nutritionfact.setR_Calories((double)2400);
	 		}else if(Integer.parseInt(yy) < 1974 & Integer.parseInt(yy) > 1963) {
	 			// 50~59세(50대)
	 			System.out.println("50대입니다.");
	 			nutritionfact.setR_Carbohydrate((double)385);
	 			nutritionfact.setR_Protein((double)55);
	 			nutritionfact.setR_Fat((double)49);
	 			nutritionfact.setR_Calories((double)2200);
	 		}else{
	 			System.out.println("잘못 입력했습니다. 오류발생!");
	 			try {
	 				response.setContentType("text/html; charset=UTF-8");
	 		        PrintWriter out;
	 				out = response.getWriter();
	 				out.println("<script>alert('2022년 기준 2003년생(19세)이하는 가입이 불가능합니다!');location.href='Door.do';</script>");
	 		    	out.flush();
	 		    	out.close();
	 			} catch (IOException e) {
	 				// TODO Auto-generated catch block
	 				e.printStackTrace();
	 			}
	 		}
	 	}else if(member.getMb_Gender().equals("F")) {
	 		System.out.println("여자입니다.");
	 		if(Integer.parseInt(yy) < 2004 & Integer.parseInt(yy) > 1993) {
	 			// 20~29세(20대)
	 			System.out.println("20대입니다.");
	 			nutritionfact.setR_Carbohydrate((double)368);
	 			nutritionfact.setR_Protein((double)50);
	 			nutritionfact.setR_Fat((double)46);
	 			nutritionfact.setR_Calories((double)2100);
	 		}else if(Integer.parseInt(yy) < 1994 & Integer.parseInt(yy) > 1983) {
	 			// 30~39세(30대)
	 			System.out.println("30대입니다.");
	 			nutritionfact.setR_Carbohydrate((double)350);
	 			nutritionfact.setR_Protein((double)50);
	 			nutritionfact.setR_Fat((double)44);
	 			nutritionfact.setR_Calories((double)2000);
	 		}else if(Integer.parseInt(yy) < 1984 & Integer.parseInt(yy) > 1973) {
	 			// 40~49세(40대)
	 			System.out.println("40대입니다.");
	 			nutritionfact.setR_Carbohydrate((double)350);
	 			nutritionfact.setR_Protein((double)50);
	 			nutritionfact.setR_Fat((double)44);
	 			nutritionfact.setR_Calories((double)2000);
	 		}else if(Integer.parseInt(yy) < 1974 & Integer.parseInt(yy) > 1963) {
	 			// 50~59세(50대)
	 			System.out.println("50대입니다.");
	 			nutritionfact.setR_Carbohydrate((double)315);
	 			nutritionfact.setR_Protein((double)45);
	 			nutritionfact.setR_Fat((double)40);
	 			nutritionfact.setR_Calories((double)1800);
	 		}else{
	 			System.out.println("잘못 입력했습니다. 오류발생!");
	 			try {
	 				response.setContentType("text/html; charset=UTF-8");
	 		        PrintWriter out;
	 				out = response.getWriter();
	 				out.println("<script>alert('2022년 기준 2003년생(19세)이하는 정보수정이 불가능합니다!');location.href='Door.do';</script>");
	 		    	out.flush();
	 		    	out.close();
	 			} catch (IOException e) {
	 				// TODO Auto-generated catch block
	 				e.printStackTrace();
	 			}
	 		}
	 	}else {
	 		System.out.println("예외 상황 발생!");
	 	}
	 	System.out.println("값이 잘 입력되었습니다.");
	 	System.out.println(nutritionfact.getMb_Id());
	 	System.out.println(nutritionfact.getR_Carbohydrate());
	 	System.out.println(nutritionfact.getR_Protein());
	 	System.out.println(nutritionfact.getR_Fat());
	 	System.out.println(nutritionfact.getR_Calories());
	 	NutritionfactDAO dAo = new NutritionfactDAO();
	 	int result = dAo.updateNutritionfact(nutritionfact);
	 	System.out.println(result);
	 	if(result > 0) {
	 		System.out.println("영양 정보가 잘 수정되었습니다.");
	 	}else {
	 		System.out.println("오류가 발생했습니다.");
	 	}
        
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
