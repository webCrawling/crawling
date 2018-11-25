package command;

import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.Dao_mypage;
import etc.Command;

public class Command_mypage implements Command {

	public void exe(HttpServletRequest request, HttpServletResponse response) throws NamingException {
		
		Dao_mypage mypage = new Dao_mypage();
		
		String id = null;
		String pass = request.getParameter("pass");
		String modifiedpass = request.getParameter("modifiedpass");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		
		boolean passBoolean = false;
		boolean emailBoolean = false;
		boolean phoneBoolean = false;
		
		passBoolean = mypage.passModification(id, pass, modifiedpass);
		emailBoolean = mypage.emailModification(id, email);
		phoneBoolean = mypage.phoneModification(id, phone);
		
	}

}
