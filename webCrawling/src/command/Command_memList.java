// 관리자 페이지에서 회원 관리 버튼 클릭시 회원 목록을 보여주기 위한 Command
package command;

import java.util.ArrayList;

import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Dao_admin;
import dao.Dao_order;
import dto.Dto_join;
import dto.Dto_order;
import etc.Command;
import oracle.jdbc.OracleResultSetMetaData.SecurityAttribute;

public class Command_memList implements Command{

	public void exe(HttpServletRequest request, HttpServletResponse response) {
		
		// 회원 목록을 담을 ArrayList 객체
		ArrayList<Dto_join> list_member = null;
		
		// Dao 객체 생성
		Dao_admin dao_admin = null;
		try {
			dao_admin = new Dao_admin();
		} catch (NamingException e) {
			e.printStackTrace();
		}
		
		// 회원 목록을 가져옴
		list_member = dao_admin.getMemberList();
		
		//request 객체에 Set
		request.setAttribute("list_member", list_member);
	}

}
