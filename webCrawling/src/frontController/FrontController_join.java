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
		Action Forward forward = null;
		Action action = null;

		System.out.println("command is " + command);

		// 로그인 버튼 클릭 시 홈 페이지로 이동
		if (command.equals("/home.do")) {
			// System.out.println(request.getParameter("userid1"));
			action = new Command_home();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		// 홈페이지 이동
		else if (command.equals("/first_home.do")) {
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/home.jsp");

		}
		// 로그아웃 시 페이지 이동 
		else if (command.equals("/logout.do")) {
			forward = new ActionForward();
			forward.setRedirect(false);
			HttpSession session=request.getSession();
			session.invalidate();
			forward.setPath("/home.jsp");
			
		}

		// 로그인 페이지로 이동
		else if (command.equals("/login.do")) {

			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/login/login.jsp");
		}

		// 회원가입 약관동의 페이지로 이동
		else if (command.equals("/join.do")) {

			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/join/join1.jsp");

		}

		// 회원가입 폼 페이지 이동
		else if (command.equals("/join2.do")) {

			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/join/join2.jsp");
		}

		// 아이디 중복확인
		else if (command.equals("/CheckingId.do")) {
			action = new Command_CheckingId();
			try {

				forward = action.execute(request, response);

			} catch (Exception e) {
				e.printStackTrace();
			}

		}

		// 회원가입 비지니스 로직
		else if (command.equals("/joinCompleted.do")) {
			action = new Command_Join();
			try {

				forward = action.execute(request, response);
				System.out.println(forward.getPath());
			} catch (Exception e) {
				e.printStackTrace();
			}

		}

		//마이페이지 (수정)으로 이동
		else if (command.equals("/modification.do")){
			System.out.println("모디피케이션 컨트롤러 까지 온다.");
			action = new Command_mypage();
			try {

				forward = action.execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		//마이페이지에서 회원탈퇴
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

	
	// 페이지 이동
	if (forward.isRedirect()) {
		response.sendRedirect(forward.getPath());
	} else {
		RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
		dispatcher.forward(request, response);
	}
}



}

