package com.smhrd.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.Recipe;
import com.smhrd.model.RecipeboxDAO;

public class Insert_CompleteLB implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		int lb_seq = Integer.parseInt(request.getParameter("LunchBox_seq"));
		String lb_name = request.getParameter("Lunchbox_name");
		
		System.out.println("Insert_CompleteLB");
		System.out.println("lb_seq : " +lb_seq);
		System.out.println("lb_name : " +lb_name);
		
		RecipeboxDAO dao = new RecipeboxDAO();
		ArrayList<Recipe> list = new ArrayList<>();
		list = dao.select_ReadyIn(lb_seq);
		
		System.out.println("list확인!!!");
		System.out.println(list.get(0).getCarbohydrate() + "영양소 체크~");
		System.out.println(list.get(0).getRecipe_img());
		
		return null;
	}

}
