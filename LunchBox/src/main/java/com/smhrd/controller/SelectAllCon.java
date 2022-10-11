package com.smhrd.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.Board;
import com.smhrd.model.BoardDAO;

public class SelectAllCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		
		String s_page = request.getParameter("page");
		int page = 1;

		BoardDAO dao = new BoardDAO();
		ArrayList<Board> list = dao.selectAll();
		String article_title = request.getParameter("article_title");
		String article_date = request.getParameter("article_date");
		String article_cnt = request.getParameter("article_cnt");

		
		if (s_page != null) {
			page = Integer.parseInt(s_page);
		}
			ArrayList<Board> list2 = new ArrayList<>();
			for (int i = (page - 1) * 10; i < page * 10 && i<list.size(); i++) {
				list2.add(list.get(i));
			}

		int sum = dao.CountAll();

		int pagenum = 0;
		if (sum % 10 == 0) {
			pagenum = sum / 10;
		} else {
			pagenum = (sum / 10) + 1;
		}

		ArrayList<Board> list3 = dao.BestlistAll();

		request.setAttribute("list3", list3);
		request.setAttribute("sum", pagenum);
		request.setAttribute("list2", list2);
		return "WEB-INF/views/community/BoardMain.jsp";

	}

}
