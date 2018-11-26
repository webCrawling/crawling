package command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Dao_join;
import dto.Dto_join;
import etc.Action;
import etc.ActionForward;

// �α��� ��ư Ŭ��
public class Command_home implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Dao_join dao=new Dao_join();
	   	Dto_join dto=new Dto_join();
	   	ActionForward forward=new ActionForward();
		String id = null;
		String pwd = null;
		boolean confirmIds = false;
		
		try {
			// �Է��� id,pw �޾ƿ�
			id = (String)request.getParameter("userid1");
			pwd = (String)request.getParameter("userpwd1");
			
			// �α��� ������ true ���н� false ��ȯ
			confirmIds = dao.login(id,pwd);

			// �α��� ������ ���� ó�� �� ������ �̵�
			if(confirmIds==true) {
				HttpSession session = request.getSession();
				session.setAttribute("id", id);
				
				forward.setRedirect(false);
		   		forward.setPath("first_home.do"); 
	   			return forward;
			}
			
			// �α��� ���н� �ٽ� �α��� �������� �̵�
			else {
				forward.setRedirect(false);
				
		   		forward.setPath("login.do");
	   			return forward;
			}
			
   		
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		
		return forward;
	}

}
