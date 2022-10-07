package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.Board;
import com.smhrd.model.BoardDAO;

public class BoardUpdateCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		String article_file = request.getParameter("article_file");
		String article_title = request.getParameter("article_title");
		String mb_id = request.getParameter("mb_id");
		String article_contgent = request.getParameter("article_contgent");
		String article_seq = request.getParameter("article_seq");

		Board board = new Board();
		board.setArticle_title(article_title);
		board.setMb_id(mb_id);
		board.setArticle_contgent(article_contgent);
		board.setArticle_seq(article_seq);

		BoardDAO dao = new BoardDAO();
		int row = dao.Update(board);

		if (row > 0) {

			return "redirect:/SelectAll.do";

		} else {
			return "redirect:/BoardUpdate.do";
		}

	}

}
