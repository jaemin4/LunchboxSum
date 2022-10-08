package com.smhrd.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.smhrd.model.LunchBox_Detail;
import com.smhrd.model.RecipeboxDAO;

public class Select_lbnumCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		try {
			response.setContentType("application/x-json; charset=utf-8");
			
			int lunchbox_seq = Integer.parseInt(request.getParameter("LunchBox_seq"));
			String Recipe_code = request.getParameter("Num");
			int Recipe_seq = Integer.parseInt(request.getParameter("Seq"));
			
		
			System.out.println("Select_lbnumCon");
			
			System.out.println("도시락 순번 : "+ lunchbox_seq);
			System.out.println(" 레시피 코드 : " + Recipe_code);
			System.out.println("도시락 버튼 번호 : " + Recipe_seq);
			
			
			RecipeboxDAO dao = new RecipeboxDAO();
			dao.Delete_lb_detail(lunchbox_seq, Recipe_seq);
			dao.Insert_lb_detail(lunchbox_seq,Recipe_seq, Recipe_code);
			
			
		}
		
		catch(Exception e){
			System.out.println(e);
		}
		
		
		return null;
	}

}
