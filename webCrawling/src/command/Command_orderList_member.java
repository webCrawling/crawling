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
		int state = 0; // �ֹ��Ϸ� �ȵ� �� �������� ����
		
		HttpSession session = request.getSession();
		
		id = (String)session.getAttribute("id");
		
		// Dao ��ü ����
		Dao_admin dao_admin = new Dao_admin();

		// �ֹ� ������ ���� Dto list
		ArrayList<Dto_order> list = dao_admin.getOrderList_member(id, state);

		request.setAttribute("dto_delivermember", list);

	}

}
