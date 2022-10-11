package com.smhrd.controller;

import java.util.ArrayList;
import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.LunchboxDetailDAO;
import com.smhrd.model.Member;
import com.smhrd.model.MemberDAO;
import com.smhrd.model.Nutritionfact;
import com.smhrd.model.NutritionfactDAO;
import com.smhrd.model.Recipe;

public class ResultCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String mb_id = request.getParameter("mb_id");
		String lb_seq = request.getParameter("lb_seq");
		double box_seq = Double.parseDouble(lb_seq);

		request.setAttribute("mb_id", mb_id);
		
		// 사용자 정보 (성별/나이)
		Member mb = new Member();
		MemberDAO mbDAO = new MemberDAO();
		mb = mbDAO.selectUserinfo(mb_id);
		
		// 성별
		String gender = null;
		if(mb.getMb_Gender().equalsIgnoreCase("M")) {
			gender = "남성";
		} else {
			gender = "여성";
		}
		
		//사용자생년 (1996 >> 96)
		int year = Integer.parseInt(mb.getMb_Birthdate().substring(0, 4));
		int ye = Integer.parseInt(mb.getMb_Birthdate().substring(2, 4));
		
		//현재 년도 
		int nowYear = Calendar.getInstance().get(Calendar.YEAR);
				
		// 나이
		int age = 0;
		if (year<2000) {
			age = nowYear-(1900+ye)+1;
		} else {
			age = nowYear-(2000+ye)+1;
		}
		
		String age_st = String.valueOf(age);

		// 사용자 권장 데이터
		Nutritionfact nutri = new Nutritionfact();
		NutritionfactDAO nutriDAO = new NutritionfactDAO();
		nutri = nutriDAO.selectNutri(mb_id);

		// 런치박스상세 >> 레시피 테이블 접근
		LunchboxDetailDAO detailDao = new LunchboxDetailDAO();
		ArrayList<Recipe> boxes = (ArrayList<Recipe>) detailDao.selectAll(box_seq);

		// 값 연산
		int CARBOHYDRATE = 0;
		int PROTEIN = 0;
		int FAT = 0;
		int CALORIES = 0;

		for (int i = 0; i < boxes.size(); i++) {
			CARBOHYDRATE += boxes.get(i).getCarbohydrate();
		}
		for (int i = 0; i < boxes.size(); i++) {
			PROTEIN += boxes.get(i).getProtein();
		}
		for (int i = 0; i < boxes.size(); i++) {
			FAT += boxes.get(i).getFat();
		}
		for (int i = 0; i < boxes.size(); i++) {
			CALORIES += boxes.get(i).getCalories();
		}
		
		// 값 저장
		request.setAttribute("boxes", boxes);
		request.setAttribute("nutri", nutri);
		
		// 도시락 영양소 정보
		request.setAttribute("CARBOHYDRATE", CARBOHYDRATE);
		request.setAttribute("PROTEIN", PROTEIN);
		request.setAttribute("FAT", FAT);
		request.setAttribute("CALORIES", Integer.toString(CALORIES));
		
		// 개인 영양소 정보
		request.setAttribute("userCAR", nutri.getR_Carbohydrate());
		request.setAttribute("userPRO", nutri.getR_Protein());
		request.setAttribute("userFAT", nutri.getR_Fat());
		request.setAttribute("userCal", Integer.toString(nutri.getR_Calories().intValue()));
		
		// 사용자 정보
		request.setAttribute("gender", gender);
		request.setAttribute("age", age_st);

		return "WEB-INF/views/lunchbox/Result.jsp";
	}

}
