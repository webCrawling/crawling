package command;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Dao_join;
import dto.Dto_join;
import etc.Action;
import etc.ActionForward;

public class Command_Join implements Action {
	 public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{
		 
		Dao_join dao=new Dao_join();
	   	Dto_join dto=new Dto_join();
   		
	   	ActionForward forward = null;
	   	
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