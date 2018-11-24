package command;

import java.net.StandardSocketOptions;
import java.util.ArrayList;

import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Dao_admin;
import dto.Dto_join;
import dto.Dto_order;
import etc.Command;

public class Command_memInfo implements Command {

	public void exe(HttpServletRequest request, HttpServletResponse response) throws NamingException {
		
		String id = (String)request.getAttribute("id");
		//test
		System.out.println(id);
		// Dao 객체 생성
		Dao_admin dao_admin = new Dao_admin();
		
		// 회원 정보를 담을 Dto
		Dto_join dto_member =dao_admin.getMemberInformation(id);
		
		// 회원의 주문 내역을 담을 Dto
		Dto_order dto_order = dao_admin.getMemberOrderList(id);
		
		// 회원의 전체 주문 내역을 담을 Dto list
		ArrayList<Dto_order> list_wholeOrder =dao_admin.getWholeorder(id);
		
		
		
		request.setAttribute("dto_member", dto_member);
		request.setAttribute("dto_order", dto_order);
		request.setAttribute("dto_wholeOrder", list_wholeOrder);
		
	}

}
