package command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Dao_join;
import dto.Dto_join;
import etc.Action;
import etc.ActionForward;

public class Command_CheckingId implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Dao_join dao=new Dao_join();
	   	Dto_join dto=new Dto_join();
	   	ActionForward forward=new ActionForward();
		String id = null;
		boolean confirmIds = true;
		
		try {
			
			id = (String)request.getParameter("query");
			confirmIds = dao.CheckingId(id);
			System.out.println(confirmIds);
			request.setAttribute("confirmIds", confirmIds);
			forward.setRedirect(false);
	   		forward.setPath("/join/confirm.jsp");
   			return forward;
   		
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		
		return forward;
	}

}
