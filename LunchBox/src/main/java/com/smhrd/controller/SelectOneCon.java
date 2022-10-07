package com.smhrd.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.Board;
import com.smhrd.model.BoardDAO;
import com.smhrd.model.Comment;
import com.smhrd.model.CommentDAO;

public class SelectOneCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		String article_seq = request.getParameter("article_seq");
		CommentDAO dao = new CommentDAO();

		ArrayList<Comment> list2 = dao.commentAll(article_seq);
		BoardDAO dao2 = new BoardDAO();
		Board board = dao2.selectOne(article_seq);

		request.setAttribute("list2", list2);
		request.setAttribute("board", board);

		return "WEB-INF/views/community/BoardContent.jsp";

	}

}
