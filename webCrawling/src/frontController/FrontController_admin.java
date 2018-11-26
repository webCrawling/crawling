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
import command.Command_event;
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


		// 관리 페이지로 이동
		if (com.equals("/goAdmin.am")) {
			forward = "/admin/adminPage.jsp";
		}


		// 배달 관리 (관리자)
		else if (com.equals("/deliver_admin.am")) {
			Command command = new Command_deliveryAdmin();
			try {
				command.exe(request, response);
			} catch (NamingException e) {
				e.printStackTrace();
			}
			forward = "/admin/delivery_admin.jsp";
		}


		// 배달 완료
		else if (com.equals("/deliveryComplete.am")) {
			Command command = new Command_deliveryComplete();
			try {
				command.exe(request, response);
			} catch (NamingException e) {
				e.printStackTrace();
			}
			forward = "deliver_admin.am";
		}


		// 관리자 통계
		else if (com.equals("/Statistics.am")) {
			Command command = new Command_statistics();
			try {
				command.exe(request, response);
			} catch (NamingException e) {
				e.printStackTrace();
			}
			forward = "/admin/statistics.jsp";
		}
		
		
		// 관리자 이벤트 공지 페이지로 이동
				if (com.equals("/goNewEvent.am")) {
					forward = "/admin/newEvent.jsp";
				}
		
		// 관리자 이벤트 공지 올리기 로직
		else if(com.equals("/uploadEvent.am")) {
			Command command = new Command_event();
			try {
				command.exe(request, response);
			} catch (NamingException e) {
				e.printStackTrace();
			}
			forward = "/admin/adminPage.jsp";
			
		}
		
		// 이벤트 공지 전체 보기
		else if(com.equals("/eventList.am")) {
			Command command = new Command_event();
			try {
				command.exe(request, response);
			} catch (NamingException e) {
				e.printStackTrace();
			}
			forward = "/event/event_list.jsp";
			
		}	


		// 회원 관리 버튼 클릭시 클라이언트에게 보여줄 회원 목록을 가져오는 로직
		else if (com.equals("/memberList.am")) {
			Command command = new Command_memList();
			try {
				command.exe(request, response);
			} catch (NamingException e) {
				e.printStackTrace();
			}
			forward = "/admin/list_member.jsp";
		}

		// 회원이름 클릭시 회원정보 + 회원의 전체 주문내역을 가져오는 로직
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

		// 회원 삭제 로직
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

		// 마이페이지 (수정)으로 이동

		/*else if (com.equals("/modification.am")) {

			Command command = new Command_mypage();
			try {
				command.exe(request, response);
			} catch (NamingException e) {
				e.printStackTrace();
			}
		}*/

		// 페이지 이동
		RequestDispatcher dis = request.getRequestDispatcher(forward);
		dis.forward(request, response);

	}

}