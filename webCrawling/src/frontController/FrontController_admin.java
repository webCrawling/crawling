package frontController;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

import javax.naming.NamingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.Command_delete;
import command.Command_deliveryAdmin;
import command.Command_deliveryComplete;
import command.Command_memInfo;
import command.Command_memList;
import command.Command_mypage;
import command.Command_statistics;
import dao.Dao_admin;
import dto.Dto_join;
import dto.Dto_order;
import etc.Command;

//@WebServlet("*.am")
public class FrontController_admin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public FrontController_admin() {
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("doGet");
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("doPost");
		doProcess(request, response);
	}

	// FrontController Process
	public void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("doProcess");

		request.setCharacterEncoding("utf-8");
		String forward = null;

		String uri = request.getRequestURI();
		String contextPath = request.getContextPath();
		String com = uri.substring(contextPath.length());

		System.out.println("contextPath : " + contextPath);
		System.out.println("selected command : " + com);

	
		if (com.equals("/goAdmin.am")) {
			forward = "/admin/adminPage.jsp";
		}

		if (com.equals("/deliver_admin.am")) {
			Command command = new Command_deliveryAdmin();
			try {
				command.exe(request, response);
			} catch (NamingException e) {
				e.printStackTrace();
			}
			forward = "/admin/delivery_admin.jsp";
		}

		if (com.equals("/deliveryComplete.am")) {
			Command command = new Command_deliveryComplete();
			try {
				command.exe(request, response);
			} catch (NamingException e) {
				e.printStackTrace();
			}
			forward = "deliver_admin.am";
		}

		
		if (com.equals("/Statistics.am")) {
			Command command = new Command_statistics();
			try {
				command.exe(request, response);
			} catch (NamingException e) {
				e.printStackTrace();
			}
			forward = "/admin/statistics.jsp";
		}

		
		else if (com.equals("/memberList.am")) {
			Command command = new Command_memList();
			try {
				command.exe(request, response);
			} catch (NamingException e) {
				e.printStackTrace();
			}
			forward = "/admin/list_member.jsp";
		}

		else if (com.equals("/memberInfo.am")) {
			String id = request.getParameter("id");
			request.setAttribute("id", id);
			Command command = new Command_memInfo();
			try {
				command.exe(request, response);
			} catch (NamingException e) {
				e.printStackTrace();
			}
			forward = "/admin/information_member.jsp";
		}

		
		else if (com.equals("/delete.am")) {

			String id = request.getParameter("id");
			request.setAttribute("id", id);
			Command command = new Command_delete();
			try {
				command.exe(request, response);
			} catch (NamingException e) {
				e.printStackTrace();
			}

			forward = "/memberList.am";

		}


		else if (com.equals("/modification.am")) {

			Command command =  (Command) new Command_mypage();
			try {
				command.exe(request, response);
			} catch (NamingException e) {
				e.printStackTrace();
			}
		}

	
		RequestDispatcher dis = request.getRequestDispatcher(forward);
		dis.forward(request, response);

	}

}
