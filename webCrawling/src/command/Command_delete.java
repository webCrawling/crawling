package command;

import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Dao_admin;
import etc.Command;

public class Command_delete implements Command {

	public void exe(HttpServletRequest request, HttpServletResponse response) throws NamingException {
		
		String id = (String)request.getParameter("id");
		System.out.println("delete name : "+id);
		
		Dao_admin dao = new Dao_admin();
		
		dao.delete(id);
		
	}

}
