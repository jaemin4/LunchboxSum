package frontController;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.controller.CalendarCon;
import com.smhrd.controller.CalendarDetailCon;
import com.smhrd.controller.Controller;
import com.smhrd.controller.DoorCon;
import com.smhrd.controller.GoLunchCon;
import com.smhrd.controller.Insert_CompleteLB;
import com.smhrd.controller.JoinCon;
import com.smhrd.controller.LoginCon;
import com.smhrd.controller.MainCon;
import com.smhrd.controller.Re_SearchCon;
import com.smhrd.controller.Select_lbnumCon;
import com.smhrd.controller.Send_lbseqCon;


@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	Map<String, Controller> mappings;
	
	public void init(ServletConfig config) throws ServletException {
		System.out.println("Servlet생성됨");
		
		mappings = new HashMap<>();
		
		// * 매핑예시
		mappings.put("/Main.do", new MainCon());
		mappings.put("/GoCalendar.do", new CalendarCon());
		mappings.put("/GoCalendarDetail.do", new CalendarDetailCon());

		mappings.put("/GoLunch.do", new GoLunchCon());
		mappings.put("/ajax.do", new Re_SearchCon());
		mappings.put("/ajax_LunchSuB.do", new Select_lbnumCon());
		mappings.put("/ajax_Send_lbseqCon.do", new Send_lbseqCon());
		mappings.put("/ajax_Insert_CompleteLB.do", new Insert_CompleteLB());

		mappings.put("/Join.do", new JoinCon());
		mappings.put("/Door.do", new DoorCon());
		mappings.put("/Login.do", new LoginCon());

	}


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("EUC-KR");
		
		String url = request.getRequestURI();
		String cpath = request.getContextPath();
		String command = url.substring(cpath.length());
		
		Controller con = null;
		String nextView = null;
		
		con = mappings.get(command);
		
		nextView = con.execute(request, response);
		
		// 페이지 이동
		if(nextView!=null) {
			if(nextView.contains("redirect:/")) {
				// redirect
				response.sendRedirect(nextView.split(":/")[1]);
			} else {
				// forward
				RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/views/"+nextView+".jsp");
				rd.forward(request, response);
			}
		
	}
	}

}
