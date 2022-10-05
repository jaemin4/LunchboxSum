package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.Lunchbox;
import com.smhrd.model.LunchboxDAO;

public class CalendarDetailCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		String year = request.getParameter("year");
		String month = request.getParameter("month");
		String day = request.getParameter("day");
		String mb_id = request.getParameter("userID");
		
		year = year.substring(2);
		if(Integer.parseInt(month)<10) {
			month = "0"+month;
		}
		if(Integer.parseInt(day)<10) {
			day = "0"+day;
		}
		
		String ld_Date = year+"/"+month+"/"+day;
		
		System.out.println(mb_id);
		System.out.println(ld_Date);
		
		Lunchbox lunch = new Lunchbox();
		LunchboxDAO dao = new LunchboxDAO();
		
		lunch.setMb_Id(mb_id);
		lunch.setLd_Date(ld_Date);
		
		Lunchbox date_lunch = dao.lunch_DateList(lunch);
		
		double lb_seq = date_lunch.getLb_Seq();
		
		
		
		request.setAttribute("date_lunch", date_lunch);
		
		return "WEB-INF/views/lunchbox/Calendar_detail.jsp";
	}

}
