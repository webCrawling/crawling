package command;

import java.util.ArrayList;

import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Dao_admin;
import dto.Dto_order;
import etc.Command;

public class Command_orderList_member implements Command {

	public void exe(HttpServletRequest request, HttpServletResponse response) throws NamingException {

		String id = null;
		int state = 0; // 주문완료 안된 것 가져오기 위해
		
		HttpSession session = request.getSession();
		
		id = (String)session.getAttribute("id");
		
		// Dao 객체 생성
		Dao_admin dao_admin = new Dao_admin();

		// 주문 내역을 담을 Dto list
		ArrayList<Dto_order> list = dao_admin.getOrderList_member(id, state);

		request.setAttribute("dto_delivermember", list);

	}

}
