package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.smhrd.model.Comment;
import com.smhrd.model.CommentDAO;

public class InsertCommentCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String cmt_content = request.getParameter("cmt_content");
		String mb_id = (String)session.getAttribute("session");
		String article_seq = request.getParameter("article_seq");
		
		
		
		Comment comment = new Comment();

		comment.setCmt_content(cmt_content);
		comment.setMb_id(mb_id);
		comment.setArticle_seq(article_seq);

		CommentDAO dao = new CommentDAO();
		int row = dao.InsertComment(comment);

		return "CommentAll.do";
	}

}
