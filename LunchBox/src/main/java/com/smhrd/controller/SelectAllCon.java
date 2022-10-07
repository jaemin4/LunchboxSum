package com.smhrd.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.Board;
import com.smhrd.model.BoardDAO;

public class SelectAllCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		// 페이지 값 받아오기
		String s_page = request.getParameter("page");
		int page = 1;

		BoardDAO dao = new BoardDAO();
		ArrayList<Board> list = dao.selectAll();
		String article_title = request.getParameter("article_title");
		String article_date = request.getParameter("article_date");
		String article_cnt = request.getParameter("article_cnt");

		// 반복문으로 다시 담기(찾을 때 로직의 패턴을 파악해서 다시 ArrayList를 하나 생성해서 돌려주기)
		if (s_page != null) {
			page = Integer.parseInt(s_page);
		}// i가 1일 때 1~10 => i+(9*(i-1)) ~ i*10
			ArrayList<Board> list2 = new ArrayList<>();
			for (int i = (page - 1) * 10; i < page * 10 && i<list.size(); i++) {
				list2.add(list.get(i));
			}

		// 전체 게시글 개수
		int sum = dao.CountAll();

		// 페이지 개수 정하는 로직맞나?
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
