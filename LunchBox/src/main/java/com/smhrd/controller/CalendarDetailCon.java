package com.smhrd.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.LunchBox_Detail;
import com.smhrd.model.Lunchbox;
import com.smhrd.model.LunchboxDAO;
import com.smhrd.model.LunchboxDetailDAO;
import com.smhrd.model.Recipe;

public class CalendarDetailCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String mb_id = request.getParameter("userID");
		String ld_Date = request.getParameter("time");
		// ld_Date = ld_Date.replace("-", "/");
		// ld_Date = ld_Date.substring(2);
		
		// 런치박스 테이블 접근
		Lunchbox lunch = new Lunchbox();
		LunchboxDAO lunchDao = new LunchboxDAO();
		lunch.setMb_Id(mb_id);
		lunch.setLd_Date(ld_Date);
		Lunchbox date_lunch = lunchDao.lunch_DateList(lunch);

		// 런치박스상세 >> 레시피 테이블 접근
		LunchBox_Detail detail = new LunchBox_Detail();
		LunchboxDetailDAO detailDao = new LunchboxDetailDAO();
		double lb_seq = date_lunch.getLb_Seq();
		ArrayList<Recipe> boxes = (ArrayList<Recipe>) detailDao.selectAll(lb_seq);
		
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
		request.setAttribute("date_lunch", date_lunch);
		request.setAttribute("boxes", boxes);
		request.setAttribute("CARBOHYDRATE", CARBOHYDRATE);
		request.setAttribute("PROTEIN", PROTEIN);
		request.setAttribute("FAT", FAT);
		request.setAttribute("CALORIES", CALORIES);
		
		return "WEB-INF/views/lunchbox/Calendar_detail.jsp";
	}

}
