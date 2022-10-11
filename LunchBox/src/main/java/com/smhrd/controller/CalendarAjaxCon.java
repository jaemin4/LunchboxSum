package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.smhrd.model.Lunchbox;
import com.smhrd.model.LunchboxDAO;

public class CalendarAjaxCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		String mb_id = request.getParameter("mb_id");

		LunchboxDAO dao = new LunchboxDAO();
		ArrayList<Lunchbox> user_lunchList = dao.lunchList(mb_id);
		
		
		// 한글인코딩!
		response.setCharacterEncoding("UTF-8");
		
		// 출력스트림
		PrintWriter out = null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		// JSON : JavaScript Object Notation
		// json은 문자열로 보내야함! >> 그걸 편하게 바꿔주는 gson사용
		// "[ { \"key\" : \"value\", ....   }, ....  ]"
		
		Gson gson = new Gson();
		String json = gson.toJson(user_lunchList);
		// System.out.println(json);
		
		out.print(json);
		
		// 비동기방식이므로 페이지 응답없이 null로 처리
		return null;
	}

}
