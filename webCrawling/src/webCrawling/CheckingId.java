package webCrawling;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.Dao;
import db.Dto;

public class CheckingId implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Dao dao=new Dao();
	   	Dto dto=new Dto();
	   	ActionForward forward=new ActionForward();
		String id = null;
		boolean confirmIds = true;
		
		try {
			
			id = (String)request.getParameter("memId");
			confirmIds = dao.CheckingId(id);
			
			forward.setRedirect(false);
	   		forward.setPath("./join.jsp");
   			return forward;
   		
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		
		return forward;
	}

}
