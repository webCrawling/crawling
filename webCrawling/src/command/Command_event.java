package command;

import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Dao_admin;
import dao.Dao_join;
import dto.Dto_join;
import etc.ActionForward;
import etc.Command;

public class Command_event implements Command {

	public void exe(HttpServletRequest request, HttpServletResponse response) throws NamingException {
		Dao_admin dao =  new Dao_admin();
		
		String title;
		String content;
   		
		title = (String)request.getParameter("title");
		content = (String)request.getParameter("content");
		
   		dao.uploadEvent(title,content);
		
		
	}

}
