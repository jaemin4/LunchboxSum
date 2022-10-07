package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.Board;
import com.smhrd.model.BoardDAO;

public class UpdateLikeCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		String article_likes = request.getParameter("article_likes");
		String article_seq = request.getParameter("article_seq");

		Board board = new Board();
		board.setArticle_seq(article_seq);
		board.setArticle_likes(Integer.parseInt(article_likes));

		BoardDAO dao = new BoardDAO();

		int row = dao.UpdateLike(board);

		if (row > 0) {
			return "SelectOne.do";
		} else {
			return "redirect:/UpdateLike.do";
		}
	}

}
