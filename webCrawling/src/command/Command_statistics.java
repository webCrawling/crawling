package command;

import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Dao_admin;
import etc.Command;

public class Command_statistics implements Command {

	public void exe(HttpServletRequest request, HttpServletResponse response) throws NamingException {
		
		Dao_admin dao = new Dao_admin();
		int sum;
		sum = dao.doStatistics();
		
		request.setAttribute("sum", sum);
		
	}

}
