package command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Dao_join;
import dto.Dto_join;
import etc.ActionForward;

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
			id = (String)request.getParameter("userid1");
			pwd = (String)request.getParameter("userpwd1");
			
			confirmIds = dao.login(id,pwd);
			
			
			System.out.println(confirmIds);
			request.setAttribute("confirmIds", confirmIds);
			
			request.setAttribute("userId", id);
			
			
			forward.setRedirect(false);
	   		forward.setPath("/login.do");
   			return forward;
   		
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		
		return forward;
	}

}
