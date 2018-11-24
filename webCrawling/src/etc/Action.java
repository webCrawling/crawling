package command;

import javax.servlet.http.*;

import etc.ActionForward;

public interface Action {
	public ActionForward execute(HttpServletRequest request,HttpServletResponse response) 
			throws Exception;
}
