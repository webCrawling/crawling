package command;

import java.util.ArrayList;

import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Dao_admin;
import dto.Dto_event;
import dto.Dto_join;
import etc.Command;

public class Command_eventList implements Command {

	public void exe(HttpServletRequest request, HttpServletResponse response) throws NamingException {

		// ArrayList ��ü
		ArrayList<Dto_event> list = null;

		// Dao ��ü ����
		Dao_admin dao = null;
		try {
			dao = new Dao_admin();
		} catch (NamingException e) {
			e.printStackTrace();
		}

		// ȸ�� ����� ������
		list = dao.getEventList();

		// request ��ü�� Set
		request.setAttribute("list_event", list);

	}

}
