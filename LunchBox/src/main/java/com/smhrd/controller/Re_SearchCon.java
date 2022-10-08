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
			
			System.out.println("Re_SearchCon");
			System.out.println("받아온 데이터 : "+search);

			RecipeboxDAO dao = new RecipeboxDAO();
			ArrayList<Recipe> list = new ArrayList<>();
			
			list = dao.Search_Keyword(search);

			//==================================================================================
			String jsonArr = gson.toJson(list);
			System.out.println("Re_SearchCon");
			System.out.println("보내준 데이터 : "+jsonArr);
			
			PrintWriter out = response.getWriter();
			out.print(jsonArr);
			
		
		}
		
		catch(Exception e){
			System.out.println(e);
		}


		return null;
	}
}

