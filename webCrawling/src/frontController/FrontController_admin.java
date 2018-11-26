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

		// 愿�由� �럹�씠吏�濡� �씠�룞
		if (com.equals("/goAdmin.am")) {
			forward = "/admin/adminPage.jsp";
		}

		// 諛곕떖 愿�由� (愿�由ъ옄)
		if (com.equals("/deliver_admin.am")) {
			Command command = new Command_deliveryAdmin();
			try {
				command.exe(request, response);
			} catch (NamingException e) {
				e.printStackTrace();
			}
			forward = "/admin/delivery_admin.jsp";
		}

		// 諛곕떖 �셿猷�
		if (com.equals("/deliveryComplete.am")) {
			Command command = new Command_deliveryComplete();
			try {
				command.exe(request, response);
			} catch (NamingException e) {
				e.printStackTrace();
			}
			forward = "deliver_admin.am";
		}

		// 愿�由ъ옄 �넻怨�
		if (com.equals("/Statistics.am")) {
			Command command = new Command_statistics();
			try {
				command.exe(request, response);
			} catch (NamingException e) {
				e.printStackTrace();
			}
			forward = "/admin/statistics.jsp";
		}

		// �쉶�썝 愿�由� 踰꾪듉 �겢由��떆 �겢�씪�씠�뼵�듃�뿉寃� 蹂댁뿬以� �쉶�썝 紐⑸줉�쓣 媛��졇�삤�뒗 濡쒖쭅
		else if (com.equals("/memberList.am")) {
			Command command = new Command_memList();
			try {
				command.exe(request, response);
			} catch (NamingException e) {
				e.printStackTrace();
			}
			forward = "/admin/list_member.jsp";
		}

		// �쉶�썝�씠由� �겢由��떆 �쉶�썝�젙蹂� + �쉶�썝�쓽 �쟾泥� 二쇰Ц�궡�뿭�쓣 媛��졇�삤�뒗 濡쒖쭅
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

		// �쉶�썝 �궘�젣 濡쒖쭅
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

		// 留덉씠�럹�씠吏� (�닔�젙)�쑝濡� �씠�룞

	
		// �럹�씠吏� �씠�룞
		RequestDispatcher dis = request.getRequestDispatcher(forward);
		dis.forward(request, response);

	}

}
