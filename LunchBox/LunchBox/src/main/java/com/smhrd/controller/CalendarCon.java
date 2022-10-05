package com.smhrd.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.Lunchbox;
import com.smhrd.model.LunchboxDAO;

public class CalendarCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// 메인에서 넘어올때 사용자 아이디 받아서
		// 완성된 도시락 테이블에서 정보 꺼내기
		
		String mb_id = request.getParameter("mb_Id");
		
		LunchboxDAO dao = new LunchboxDAO();
		ArrayList<Lunchbox> user_lunchList = dao.lunchList(mb_id);
		
		request.setAttribute("user_lunchList", user_lunchList);
		
		return "lunchbox/Calendar_list";
	}

}
