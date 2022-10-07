package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.Member;
import com.smhrd.model.MemberDAO;

public class AdminUserCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// 현재 테이블 내 유저 정보를 조건에 맞게 모두 조회해서 출력해준다
		String M = "M";
		String F = "F";
		
		Member member = new Member();
		MemberDAO dao = new MemberDAO();
		
		member.setMb_Gender(M);
		System.out.println("현재 세팅된 성별 값은 "+member.getMb_Gender()+"입니다.");
		int countGenderM = 0;
		if(member.getMb_Gender().equals(M)) {
			countGenderM = dao.selectGender(member);
			System.out.println("현재 회원 중 남자는 총 "+countGenderM+"명입니다.");
		}
		int countGenderMBirth20 = dao.selectGenderBirth20(member);
		System.out.println("현재 회원 중 남자이면서 20대인 회원은 총 "+countGenderMBirth20+"명입니다.");
		int countGenderMBirth30 = dao.selectGenderBirth30(member);
		System.out.println("현재 회원 중 남자이면서 30대인 회원은 총 "+countGenderMBirth30+"명입니다.");
		int countGenderMBirth40 = dao.selectGenderBirth40(member);
		System.out.println("현재 회원 중 남자이면서 40대인 회원은 총 "+countGenderMBirth40+"명입니다.");
		int countGenderMBirth50 = dao.selectGenderBirth50(member);
		System.out.println("현재 회원 중 남자이면서 50대인 회원은 총 "+countGenderMBirth50+"명입니다.");
		member.setMb_Gender(F);
		System.out.println("현재 세팅된 성별 값은 "+member.getMb_Gender()+"입니다.");
		int countGenderF = 0;
		if(member.getMb_Gender().equals(F)) {
			countGenderF = dao.selectGender(member);
			System.out.println("현재 회원 중 여자는 총 "+countGenderF+"명입니다.");
		}
		int countGenderFBirth20 = dao.selectGenderBirth20(member);
		System.out.println("현재 회원 중 여자이면서 20대인 회원은 총 "+countGenderFBirth20+"명입니다.");
		int countGenderFBirth30 = dao.selectGenderBirth30(member);
		System.out.println("현재 회원 중 여자이면서 30대인 회원은 총 "+countGenderFBirth30+"명입니다.");
		int countGenderFBirth40 = dao.selectGenderBirth40(member);
		System.out.println("현재 회원 중 여자이면서 40대인 회원은 총 "+countGenderFBirth40+"명입니다.");
		int countGenderFBirth50 = dao.selectGenderBirth50(member);
		System.out.println("현재 회원 중 여자이면서 50대인 회원은 총 "+countGenderFBirth50+"명입니다.");
		
		HttpSession session = request.getSession();
		
		session.setAttribute("countGenderM",countGenderM);
		System.out.println("세션에 담긴 성별이 남자인 회원은 총 "+session.getAttribute("countGenderM")+"명입니다.");
		session.setAttribute("countGenderF",countGenderF);
		System.out.println("세션에 담긴 성별이 여자인 회원은 총 "+session.getAttribute("countGenderF")+"명입니다.");
		session.setAttribute("countGenderMBirth20",countGenderMBirth20);
		System.out.println("세션에 담긴 성별이 남자이고 20대인 회원은 총 "+session.getAttribute("countGenderMBirth20")+"명입니다.");
		session.setAttribute("countGenderMBirth30",countGenderMBirth30);
		System.out.println("세션에 담긴 성별이 남자이고 30대인 회원은 총 "+session.getAttribute("countGenderMBirth30")+"명입니다.");
		session.setAttribute("countGenderMBirth40",countGenderMBirth40);
		System.out.println("세션에 담긴 성별이 남자이고 40대인 회원은 총 "+session.getAttribute("countGenderMBirth40")+"명입니다.");
		session.setAttribute("countGenderMBirth50",countGenderMBirth50);
		System.out.println("세션에 담긴 성별이 남자이고 50대인 회원은 총 "+session.getAttribute("countGenderMBirth50")+"명입니다.");
		session.setAttribute("countGenderFBirth20",countGenderFBirth20);
		System.out.println("세션에 담긴 성별이 여자이고 20대인 회원은 총 "+session.getAttribute("countGenderFBirth20")+"명입니다.");
		session.setAttribute("countGenderFBirth30",countGenderFBirth30);
		System.out.println("세션에 담긴 성별이 여자이고 30대인 회원은 총 "+session.getAttribute("countGenderFBirth30")+"명입니다.");
		session.setAttribute("countGenderFBirth40",countGenderFBirth40);
		System.out.println("세션에 담긴 성별이 여자이고 40대인 회원은 총 "+session.getAttribute("countGenderFBirth40")+"명입니다.");
		session.setAttribute("countGenderFBirth50",countGenderFBirth50);
		System.out.println("세션에 담긴 성별이 여자이고 50대인 회원은 총 "+session.getAttribute("countGenderFBirth50")+"명입니다.");
		
		return "WEB-INF/views/member/Viewmemberdetail.jsp";
	}

}
