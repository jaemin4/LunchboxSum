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

import com.smhrd.controller.Controller;

@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	Map<String, Controller> mappings;
	
	public void init(ServletConfig config) throws ServletException {
		System.out.println("Servlet생성됨");
		
		mappings = new HashMap<>();
		
		// * 매핑예시
		// mappings.put("/recipeList.do", new RecipeListCon());

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
