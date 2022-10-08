package com.smhrd.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.Board;
import com.smhrd.model.BoardDAO;
import com.smhrd.model.Comment;
import com.smhrd.model.CommentDAO;

public class SelectOneCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		
		String article_seq = request.getParameter("article_seq");
		String mb_id = (String)session.getAttribute("session");
		CommentDAO dao = new CommentDAO();

		ArrayList<Comment> list2 = dao.commentAll(article_seq);
		BoardDAO dao2 = new BoardDAO();
		Board board = dao2.selectOne(article_seq);

		request.setAttribute("list2", list2);
		request.setAttribute("board", board);
		request.setAttribute("mb_id", mb_id);

		return "WEB-INF/views/community/BoardContent.jsp";

	}

}
