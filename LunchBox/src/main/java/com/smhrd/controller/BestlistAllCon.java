package com.smhrd.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.Board;
import com.smhrd.model.BoardDAO;

public class BestlistAllCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
	      
	      String article_title = request.getParameter("article_title");
	      String article_date = request.getParameter("article_date");
	      String article_likes = request.getParameter("article_likes");
	      String article_seq = request.getParameter("article_seq");
	       BoardDAO dao = new BoardDAO();
	         ArrayList<Board> list3 = dao.BestlistAll();

	         request.setAttribute("list3", list3);

	         return "WEB-INF/views/community/BoardMain.jsp";
	   }

}
