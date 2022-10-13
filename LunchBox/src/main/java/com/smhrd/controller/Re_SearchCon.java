package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.smhrd.model.LunchboxDAO;
import com.smhrd.model.Member;
import com.smhrd.model.MemberDAO;
import com.smhrd.model.Recipe;
import com.smhrd.model.RecipeboxDAO;

import lombok.RequiredArgsConstructor;


//@WebServlet("/LunchBox")
public class Re_SearchCon implements Controller{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		try {
			
			response.setContentType("application/x-json; charset=utf-8");
			Gson gson = new Gson(); 
			
			String search = request.getParameter("Search");
			String method = request.getParameter("Method");
			String level = request.getParameter("Level");
			String time = request.getParameter("Time");
			
			
			String[] method_r = new String[4];

			
			System.out.println("Re_SearchCon");
			System.out.println("받아온 데이터 : "+search);
			System.out.println("받아온 데이터 : "+method);
			System.out.println("받아온 데이터 : "+level);
			System.out.println("받아온 데이터 : "+time);
		
			
			System.out.println(search+"검색 확인");
			
			//조리 방식
			 
			if(method.equals("조림,무침,절임,비빔")) {
				method_r = method.split(",");
			}
			else if(method.equals("부침,튀김,굽기,삶기")) {
				method_r = method.split(",");
			}
			else if(method.equals("끓이기,찜,데치기")) {
				method_r = method.split(",");
			}
			else if(method.equals("볶음,기타")) {
				method_r = method.split(",");
			}
			else {
				for(int i = 0; i<4; i++) {
					method_r[i] = "%";
				}
			}
			
			//사용자가 검색창에 검색을 하지 않고 조리방법이나 시간이나 레벨을 선택했을시 
			if((search.length()<1) & ((time.length()>=2)||(level.length()>=2))){
				search = "%";
			}
			
			else {
				search = "%"+search+"%";
			}
			
			time = time+"%"; 
			level = level+"%";
			
		
			Recipe dto = new Recipe(method_r,time,level,search);
			
			System.out.println("보내줄 데이터");
			System.out.println("시간의 길이 : "+time.length() +"레벨의 길이"+ level.length()+" 검색의 길이 : "+search.length() + " search : "+search);
			System.out.println(method_r[0]);
			System.out.println(search+search.length());
			System.out.println(time);
			System.out.println(level);
			
		
			if((search.length()>=3) || (time.length()>=2) ||(level.length()>=2)) {
				
				RecipeboxDAO dao = new RecipeboxDAO();
				ArrayList<Recipe> list = new ArrayList<>();
				
				list = dao.Search_Keyword(dto);
	
				//==================================================================================
				String jsonArr = gson.toJson(list);
				System.out.println("Re_SearchCon");
				System.out.println("보내준 데이터 : "+jsonArr);
				
				PrintWriter out = response.getWriter();
				out.print(jsonArr);
			}
		
			
		}
		catch(Exception e){
			System.out.println(e);
		}

		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		return null;
	}
}

