package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.smhrd.model.Member;
import com.smhrd.model.MemberDAO;
import com.smhrd.model.Nutritionfact;
import com.smhrd.model.NutritionfactDAO;

public class JoinOKCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		response.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("mb_Id");
		String pw = request.getParameter("mb_Pw1");
		String gender = request.getParameter("mb_Gender");
		String yy = request.getParameter("yy");
		String mm = request.getParameter("mm");
		String dd = request.getParameter("dd");
		System.out.println(id);
		System.out.println(pw);
		System.out.println(gender);
		
		Member member = new Member();
		member.setMb_Id(id);
        member.setMb_Pw(pw);
        member.setMb_Gender(gender);
        
        if(Integer.parseInt(dd) < 10) {
        	member.setMb_Birthdate(yy+mm+0+dd);
        }else {
        	member.setMb_Birthdate(yy+mm+dd);
        }
        System.out.println(member);
        
        MemberDAO dao = new MemberDAO();
        int row = dao.insertMember(member);
        System.out.println(row);
		
		HttpSession session = request.getSession();
	 	session.setAttribute("sessionID", id);
	 	System.out.println(session);
	 	System.out.println("회원가입 성공!");
	 	// 회원가입 로직 끝 영양소 삽입 로직 시작
	 	Nutritionfact nutritionfact = new Nutritionfact();
	 	nutritionfact.setMb_Id(member.getMb_Id());
	 	
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
	 				out.println("<script>alert('2022년 기준 2003년생(19세)이하는 가입이 불가능합니다!');location.href='Door.do';</script>");
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
	 	NutritionfactDAO dAo = new NutritionfactDAO();
	 	int result = dAo.insertNutritionfact(nutritionfact);
	 	if(result > 0) {
	 		System.out.println("영양 정보가 잘 등록되었습니다.");
	 	}else {
	 		System.out.println("오류가 발생했습니다.");
	 	}
	 	// 영양소 삽입 로직 끝 회원 분석 로직 시작!
	 	// 회원가입한 아이디로 조회 후
	 	System.out.println("회원 가입 완료된 성별은 : "+member.getMb_Gender());
	 	// 성별로 조회
	 	if(member.getMb_Gender().equals("M")) {
	 		member.setMb_Gender("M");
	 	}else if(member.getMb_Gender().equals("F")) {
	 		member.setMb_Gender("F");
	 	}
	 	int countGender = dao.selectGender(member);
	 	if(member.getMb_Gender().equals("M")) {
	 		System.out.println("현재 성별이 남자인 사람의 총 수는 "+countGender+"명 입니다.");
	 	}else if(member.getMb_Gender().equals("F")) {
	 		System.out.println("현재 성별이 여자인 사람의 총 수는 "+countGender+"명 입니다.");
	 	}
	 	System.out.println("회원 가입 완료된 생년월일은 : "+member.getMb_Birthdate());
	 	// 성별과 연령대로 조회
	 	if(member.getMb_Gender().equals("M")) {
	 		member.setMb_Gender("M");
	 		// 값이 잘 들어왔는지 확인
	 		System.out.println("저장된 성별 값은 : "+member.getMb_Gender());
	 		if(Integer.parseInt(yy) < 2004 & Integer.parseInt(yy) > 1993) {
	 			// 20~29세(20대)
	 			System.out.println("20대입니다.");
	 			int countGenderBirth20 = dao.selectGenderBirth20(member);
	 			System.out.println("남자 이면서 20대인 사람은 총 "+countGenderBirth20+"명입니다.");
	 		}else if(Integer.parseInt(yy) < 1994 & Integer.parseInt(yy) > 1983) {
	 			// 30~39세(30대)
	 			System.out.println("30대입니다.");
	 			int countGenderBirth30 = dao.selectGenderBirth30(member);
	 			System.out.println("남자 이면서 30대인 사람은 총 "+countGenderBirth30+"명입니다.");
	 		}else if(Integer.parseInt(yy) < 1984 & Integer.parseInt(yy) > 1973) {
	 			// 40~49세(40대)
	 			System.out.println("40대입니다.");
	 			int countGenderBirth40 = dao.selectGenderBirth40(member);
	 			System.out.println("남자 이면서 40대인 사람은 총 "+countGenderBirth40+"명입니다.");
	 		}else if(Integer.parseInt(yy) < 1974 & Integer.parseInt(yy) > 1963) {
	 			// 50~59세(50대)
	 			System.out.println("50대입니다.");
	 			int countGenderBirth50 = dao.selectGenderBirth50(member);
	 			System.out.println("남자 이면서 50대인 사람은 총 "+countGenderBirth50+"명입니다.");
	 		}else{
	 			System.out.println("잘못 입력했습니다. 오류발생!");
	 		}
	 		
	 	}else if(member.getMb_Gender().equals("F")) {
	 		member.setMb_Gender("F");
	 		System.out.println("저장된 성별 값은 : "+member.getMb_Gender());
	 		if(Integer.parseInt(yy) < 2004 & Integer.parseInt(yy) > 1993) {
	 			// 20~29세(20대)
	 			System.out.println("20대입니다.");
	 			int countGenderBirth20 = dao.selectGenderBirth20(member);
	 			System.out.println("여자 이면서 20대인 사람은 총 "+countGenderBirth20+"명입니다.");
	 		}else if(Integer.parseInt(yy) < 1994 & Integer.parseInt(yy) > 1983) {
	 			// 30~39세(30대)
	 			System.out.println("30대입니다.");
	 			int countGenderBirth30 = dao.selectGenderBirth30(member);
	 			System.out.println("여자 이면서 30대인 사람은 총 "+countGenderBirth30+"명입니다.");
	 		}else if(Integer.parseInt(yy) < 1984 & Integer.parseInt(yy) > 1973) {
	 			// 40~49세(40대)
	 			System.out.println("40대입니다.");
	 			int countGenderBirth40 = dao.selectGenderBirth40(member);
	 			System.out.println("여자 이면서 40대인 사람은 총 "+countGenderBirth40+"명입니다.");
	 		}else if(Integer.parseInt(yy) < 1974 & Integer.parseInt(yy) > 1963) {
	 			// 50~59세(50대)
	 			System.out.println("50대입니다.");
	 			int countGenderBirth50 = dao.selectGenderBirth50(member);
	 			System.out.println("여자 이면서 50대인 사람은 총 "+countGenderBirth50+"명입니다.");
	 		}else{
	 			System.out.println("잘못 입력했습니다. 오류발생!");
	 		}
	 	
	 	}else {
	 		System.out.println("당신은 남자도 여자도 아닙니다.");
	 	}
	 	
	 	
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
