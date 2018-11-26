package frontController;

import java.io.IOException;

import javax.naming.NamingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.Command_CheckingId;
import command.Command_Join;
import command.Command_delete;
import command.Command_home;
import command.Command_mypage;
import dao.Dao_join;
import dto.Dto_join;
import etc.Action;
import etc.ActionForward;
import etc.Command;

@WebServlet("*.do")

public class FrontController_join extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String RequestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = RequestURI.substring(contextPath.length());
		ActionForward forward = null;
		Action action = null;

		System.out.println("command is " + command);

		// 濡쒓렇�씤 踰꾪듉 �겢由� �떆 �솃 �럹�씠吏�濡� �씠�룞
		if (command.equals("/home.do")) {
			// System.out.println(request.getParameter("userid1"));
			action = new Command_home();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		// �솃�럹�씠吏� �씠�룞
		else if (command.equals("/first_home.do")) {
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/home.jsp");

		}
		// 濡쒓렇�븘�썐 �떆 �럹�씠吏� �씠�룞 
		else if (command.equals("/logout.do")) {
			forward = new ActionForward();
			forward.setRedirect(false);
			HttpSession session=request.getSession();
			session.invalidate();
			forward.setPath("/home.jsp");
			
		}

		// 濡쒓렇�씤 �럹�씠吏�濡� �씠�룞
		else if (command.equals("/login.do")) {

			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/login/login.jsp");
		}

		// �쉶�썝媛��엯 �빟愿��룞�쓽 �럹�씠吏�濡� �씠�룞
		else if (command.equals("/join.do")) {

			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/join/join1.jsp");

		}

		// �쉶�썝媛��엯 �뤌 �럹�씠吏� �씠�룞
		else if (command.equals("/join2.do")) {

			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/join/join2.jsp");
		}

		// �븘�씠�뵒 以묐났�솗�씤
		else if (command.equals("/CheckingId.do")) {
			action = new Command_CheckingId();
			try {

				forward = action.execute(request, response);

			} catch (Exception e) {
				e.printStackTrace();
			}

		}

		// �쉶�썝媛��엯 鍮꾩��땲�뒪 濡쒖쭅
		else if (command.equals("/joinCompleted.do")) {
			action = new Command_Join();
			try {

				forward = action.execute(request, response);
				System.out.println(forward.getPath());
			} catch (Exception e) {
				e.printStackTrace();
			}

		}

		//留덉씠�럹�씠吏� (�닔�젙)�쑝濡� �씠�룞
		else if (command.equals("/modification.do")){
			System.out.println("紐⑤뵒�뵾耳��씠�뀡 而⑦듃濡ㅻ윭 源뚯� �삩�떎.");
			action = new Command_mypage();
			try {

				forward = action.execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		//留덉씠�럹�씠吏��뿉�꽌 �쉶�썝�깉�눜
		else if (command.equals("/delete.do")){

			String id = request.getParameter("id");
			request.setAttribute("id",id);
			action = new Command_delete();

			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

	
	// �럹�씠吏� �씠�룞
	if (forward.isRedirect()) {
		response.sendRedirect(forward.getPath());
	} else {
		RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
		dispatcher.forward(request, response);
	}
}



}

