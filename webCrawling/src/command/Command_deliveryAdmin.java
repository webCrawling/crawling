package command;

import java.util.ArrayList;

import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Dao_admin;
import dto.Dto_join;
import dto.Dto_order;
import etc.Command;

public class Command_deliveryAdmin implements Command {

	public void exe(HttpServletRequest request, HttpServletResponse response) throws NamingException {
	
		// Dao 객체 생성
		Dao_admin dao_admin = new Dao_admin();
		
		// 회원의 전체 주문 내역을 담을 Dto list
		ArrayList<Dto_order> list_deliverAdmin =dao_admin.deliverAdmin();
		
		System.out.println("Command_deliveryAdmin : "+list_deliverAdmin);
		
		request.setAttribute("dto_deliverAdmin", list_deliverAdmin);
	}

}
