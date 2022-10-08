package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.BoardDAO;

public class BoardDeleteCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		String article_seq = request.getParameter("article_seq");

		BoardDAO dao = new BoardDAO();
		int row = dao.Delete(article_seq);

		return "redirect:/SelectAll.do";

	}

}
