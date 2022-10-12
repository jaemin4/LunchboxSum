package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

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
		String mb_id = (String)session.getAttribute("sessionID");
		String article_seq = request.getParameter("article_seq");		
		
		Comment comment = new Comment();

		comment.setCmt_content(cmt_content);
		comment.setMb_id(mb_id);
		comment.setArticle_seq(article_seq);
		
		if(comment.getCmt_content().equals("")) {
	         try {
	            response.setCharacterEncoding("UTF-8");
	            response.setContentType("text/html; charset=UTF-8");
	              PrintWriter out;
	            out = response.getWriter();
	            out.println("<script>alert('빈칸을 채워주세요!');location.href='SelectAll.do'; </script>");
	             out.flush();
	             out.close();
	         } catch (IOException e) {
	            e.printStackTrace();
	         }
	         return "SelectOne.do";
	      }
		
		CommentDAO dao = new CommentDAO();
		int row = dao.InsertComment(comment);
		
		
		
		if(row>0) {
			return "SelectOne.do";
		}else {
			return "redirect:/InsertComment.do";
		}
	}

}
