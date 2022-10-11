package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.CommentDAO;

public class DeleteCommentCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		String cmt_seq = request.getParameter("cmt_seq");
		String article_seq = request.getParameter("article_seq");
		CommentDAO dao = new CommentDAO();
		int row = dao.DeleteComment(cmt_seq);

		return "SelectOne.do";
	}

}
