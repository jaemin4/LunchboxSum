package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.smhrd.model.Board;
import com.smhrd.model.BoardDAO;

public class InsertCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		String savePath = request.getServletContext().getRealPath("resources/image");

		int maxSize = 1024 * 1024 * 5;

		String encoding = "EUC-KR";
		MultipartRequest multi = null;
		HttpSession session = request.getSession();
		
		
		try {
			multi = new MultipartRequest(request, savePath, maxSize, encoding, new DefaultFileRenamePolicy()

			);
		} catch (IOException e) {
			e.printStackTrace();
		}

		String article_file = multi.getFilesystemName("article_file");
		
		String article_title = multi.getParameter("article_title");
		String mb_id = (String)session.getAttribute("sessionID");
		String article_contgent = multi.getParameter("article_contgent");
		

		Board board = new Board();
		board.setArticle_title(article_title);
		board.setMb_id(mb_id);
		board.setArticle_contgent(article_contgent);
		board.setArticle_file(article_file);
		
		if(board.getArticle_contgent().equals("") || board.getArticle_title().equals("")) {
			return "WEB-INF/views/community/Insert.jsp";
		}
		

		BoardDAO dao = new BoardDAO();
		int row = dao.insert(board);

		if (row > 0) {

			return "redirect:/SelectAll.do";

		} else {
			return "redirect:/Insert.do";
		}

	}

}
