package webCrawling;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.Dao;
import db.Dto;

public class Join implements Action {
	 public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{
		Dao dao=new Dao();
	   	Dto dto=new Dto();
	   	ActionForward forward=new ActionForward();
   		
   		try{

   			dto.setId((String)request.getParameter("memId"));
			dto.setPass((String)request.getParameter("newPassword"));
			dto.setEmail((String)request.getParameter("email"));
			dto.setPhone((String)request.getParameter("phone"));
			
			if(!dao.join(dto)){
				forward.setRedirect(true);
		   		forward.setPath("./join.do");
				return forward;
			}
			
			forward.setRedirect(true);
	   		forward.setPath("./login.do");
   			return forward;
  		}catch(Exception ex){
   			ex.printStackTrace();
   		}
  		return null;
	}
	
}