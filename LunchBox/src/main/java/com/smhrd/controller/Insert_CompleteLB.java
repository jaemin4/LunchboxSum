package com.smhrd.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.Recipe;
import com.smhrd.model.RecipeboxDAO;
import com.smhrd.model.Tbl_Lunchbox;

public class Insert_CompleteLB implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		int lb_seq = Integer.parseInt(request.getParameter("LunchBox_seq"));
		String lb_name = request.getParameter("Lunchbox_name");

			System.out.println("Insert_CompleteLB");
			System.out.println("lb_seq : " + lb_seq);
			System.out.println("lb_name : " + lb_name);

		RecipeboxDAO dao = new RecipeboxDAO();
		ArrayList<Recipe> list = new ArrayList<>();
		list = dao.select_ReadyIn(lb_seq);

			System.out.println("list확인!!!");
			System.out.println(list.get(0).getRecipe_img());
			System.out.println(list.get(0).getCalories() + "영양소 체크~");

		 //Insert_Completelb부분================================
		  
		  String lb_img = ""; double lb_calories = 0;
		  
		  for(int i = 0; i<list.size(); i++) { 
			  lb_img +=
		      list.get(i).getRecipe_img()+"|"; lb_calories += list.get(i).getCalories();
		   }
		  
		  //맴버 아이디 session
		  HttpSession session = request.getSession();
		  String session_mb_id = (String)session.getAttribute("sessionID");
		  System.out.println(session_mb_id );
		  
		  String mb_id = session_mb_id;
		  String ld_date = "20221013";
		  
		  //데이터 tbl_lunchbox(dto)로 집어넣기 
		 
		  Tbl_Lunchbox dto = new Tbl_Lunchbox(lb_seq,lb_name,lb_img,mb_id,ld_date,lb_calories);
		  dao.Insert_Completelb(dto);
		 

		  return null;
	}

}
