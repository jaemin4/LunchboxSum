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
import com.smhrd.controller.CalendarAjaxCon;
import com.smhrd.controller.AdminCon;
import com.smhrd.controller.AdminUserCon;
import com.smhrd.controller.BestlistAllCon;
import com.smhrd.controller.BoardDeleteCon;
import com.smhrd.controller.BoardUpdateCon;
import com.smhrd.controller.CalendarCon;
import com.smhrd.controller.CalendarDetailCon;
import com.smhrd.controller.CommentAllCon;
import com.smhrd.controller.Controller;
import com.smhrd.controller.DeleteCommentCon;
import com.smhrd.controller.DeleteCon;
import com.smhrd.controller.DoorCon;
import com.smhrd.controller.FlaskCon;
import com.smhrd.controller.FlaskImageCon;
import com.smhrd.controller.GoAskCon;
import com.smhrd.controller.GoDeleteCon;
import com.smhrd.controller.GoIdCheckCon;
import com.smhrd.controller.GoInsertCon;
import com.smhrd.controller.GoSearchPwCon;
import com.smhrd.controller.GoUpdateCon;
import com.smhrd.controller.GoViewmemberCon;
import com.smhrd.controller.IdCheckCon;
import com.smhrd.controller.InsertCommentCon;
import com.smhrd.controller.InsertCon;
import com.smhrd.controller.GoLunchCon;
import com.smhrd.controller.GoLunchResult;
import com.smhrd.controller.Insert_CompleteLB;

import com.smhrd.controller.GoMainCon;
import com.smhrd.controller.GoNutritionCon;

import com.smhrd.controller.JoinCon;
import com.smhrd.controller.JoinOKCon;
import com.smhrd.controller.LoginCon;
import com.smhrd.controller.LogoutCon;
import com.smhrd.controller.MainCon;
import com.smhrd.controller.SearchPwCon;
import com.smhrd.controller.SelectAllCon;
import com.smhrd.controller.SelectOneCon;
import com.smhrd.controller.UpdateCon;
import com.smhrd.controller.UpdateLikeCon;
import com.smhrd.controller.UpdateReadCon;
import com.smhrd.controller.Re_SearchCon;
import com.smhrd.controller.ResultCon;
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
		mappings.put("/calAjax.do", new CalendarAjaxCon());
		mappings.put("/GoLunch.do", new GoLunchCon());
		mappings.put("/ajax.do", new Re_SearchCon());
		mappings.put("/ajax_LunchSuB.do", new Select_lbnumCon());
		mappings.put("/ajax_Send_lbseqCon.do", new Send_lbseqCon());
		mappings.put("/ajax_Insert_CompleteLB.do", new Insert_CompleteLB());
		mappings.put("/Join.do", new JoinCon());
		mappings.put("/Door.do", new DoorCon());
		mappings.put("/Login.do", new LoginCon());
		mappings.put("/JoinOK.do", new JoinOKCon());
		mappings.put("/Logout.do", new LogoutCon());
		mappings.put("/GoUpdate.do", new GoUpdateCon());
		mappings.put("/Update.do", new UpdateCon());
		mappings.put("/IdCheck.do", new IdCheckCon());
		mappings.put("/GoIdCheck.do", new GoIdCheckCon());
		mappings.put("/GoDelete.do", new GoDeleteCon());
		mappings.put("/Delete.do", new DeleteCon());
		mappings.put("/Admin.do", new AdminCon());
		mappings.put("/GoViewmember.do", new GoViewmemberCon());
		mappings.put("/GoSearchPw.do", new GoSearchPwCon());
		mappings.put("/SearchPw.do", new SearchPwCon());
		mappings.put("/AdminUser.do", new AdminUserCon());
		mappings.put("/SelectAll.do", new SelectAllCon());
		mappings.put("/GoInsert.do", new GoInsertCon());
		mappings.put("/Insert.do", new InsertCon());
		mappings.put("/SelectOne.do", new SelectOneCon());
		mappings.put("/BoardUpdate.do", new BoardUpdateCon());
		mappings.put("/BoardDelete.do", new BoardDeleteCon());
		mappings.put("/Flask.do", new FlaskCon());
		mappings.put("/FlaskImage.do", new FlaskImageCon());
		mappings.put("/UpdateRead.do", new UpdateReadCon());
		mappings.put("/UpdateLike.do", new UpdateLikeCon());
		mappings.put("/InsertComment.do", new InsertCommentCon());
		mappings.put("/CommentAll.do", new CommentAllCon());
		mappings.put("/DeleteComment.do", new DeleteCommentCon());
		mappings.put("/BestlistAll.do", new BestlistAllCon());
		mappings.put("/GoAsk.do", new GoAskCon());
		mappings.put("/GoNutrition.do", new GoNutritionCon());
		mappings.put("/GoMain.do",new GoMainCon());

		mappings.put("/GoLunchResult.do",new ResultCon());

		/*mappings.put("/GoResult.do", new ResultCon());*/

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
		
		if(nextView != null) {
			if(nextView.contains("redirect:/")) {
				// redirect
				response.sendRedirect(nextView.split(":/")[1]);
			} else {
				// forward
				RequestDispatcher rd = request.getRequestDispatcher(nextView);
				rd.forward(request, response);
			}
		}
	}
	

}
