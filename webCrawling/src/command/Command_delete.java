package command;

import javax.naming.NamingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Dao_admin;
import etc.Action;
import etc.ActionForward;
import etc.Command;

public class Command_delete implements Command,Action {

	//admin ȸ��Ż��
	@Override
	public void exe(HttpServletRequest request, HttpServletResponse response) throws NamingException {
		String id = (String)request.getParameter("id");
		System.out.println("delete name : "+id);
		
		Dao_admin dao = new Dao_admin();
		
		dao.delete(id);
	}

	
	//mypage ȸ��Ż�� / ����� �ڵ�� ������ �� �� ���� ������ �������� jsp�� �ѷ��ִ� ��Ұ� �ٸ��� ����. admin�� ȸ������Ʈ�� ����, mypage�� home����
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward=new ActionForward();
		String id = (String)request.getParameter("idQuery");
		System.out.println("delete name : "+id);
		
		HttpSession session = request.getSession();
		session.invalidate();
		Dao_admin dao = new Dao_admin();
		dao.delete(id);
	
		forward.setRedirect(false);
		forward.setPath("/home.jsp");
		return forward;
	}



}
