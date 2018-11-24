package frontController;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command_order;

/**
 * Servlet implementation class FrontController_pageGo
 */
@WebServlet("*.go")
public class FrontController_pageGo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public FrontController_pageGo() {
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("doGet");
		goPage(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("doPost");
		goPage(request, response);

	}

	public void goPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String forward = null;
		
		String uri = request.getRequestURI();
		String contextPath = request.getContextPath();
		String com = uri.substring(contextPath.length());

		System.out.println("go to " + com);

		if (com.equals("/join1.go")) {
			
			forward = "/join/join1.jsp";

		}
		
		
		
		
		
		RequestDispatcher dis = request.getRequestDispatcher(forward);
		dis.forward(request, response);
		
		

	}

}
