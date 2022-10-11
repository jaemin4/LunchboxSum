package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.Board;
import com.smhrd.model.BoardDAO;

public class UpdateReadCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		String article_cnt = request.getParameter("article_cnt");
		String article_seq = request.getParameter("article_seq");
		String article_file = request.getParameter("article_file");

		Board board = new Board();
		board.setArticle_seq(article_seq);
		board.setArticle_cnt(Integer.parseInt(article_cnt));
		board.setArticle_file(article_file);
		BoardDAO dao = new BoardDAO();

		int row = dao.UpdateRead(board);

		return "SelectOne.do";

	}

}
