package command;

import java.io.UnsupportedEncodingException;

import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.Dto_order;
import etc.Command;

public class Command_deliveryComplete implements Command {
	public void exe(HttpServletRequest request, HttpServletResponse response) throws NamingException {
		System.out.println("¾ßÈ£!!!");
		
		String id = (String)request.getParameter("idCheck");
		String price = (String)request.getParameter("priceCheck");
		String state = (String)request.getParameter("state");
		
		System.out.println(id+","+price+","+state);
		
		
		
		
		
	}

}
