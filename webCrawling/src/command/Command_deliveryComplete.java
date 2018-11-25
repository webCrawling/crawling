package command;

import java.io.UnsupportedEncodingException;
import java.sql.SQLException;

import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Dao_admin;
import dto.Dto_order;
import etc.Command;

public class Command_deliveryComplete implements Command {
	public void exe(HttpServletRequest request, HttpServletResponse response) throws NamingException {
		System.out.println("¾ßÈ£!!!");
		
		Dao_admin dao_admin = new Dao_admin();
		
		String id = (String)request.getParameter("idCheck");
		int price = Integer.parseInt(request.getParameter("priceCheck"));
		int state = Integer.parseInt(request.getParameter("state"));
		
		try {
			dao_admin.orderComplete(id, price, state);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		
		System.out.println(id+","+price+","+state);
		
		
		
		
		
	}

}
