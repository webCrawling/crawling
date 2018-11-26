package command;

import javax.naming.NamingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Dao_admin;
import etc.Action;
import etc.ActionForward;
import etc.Command;

public class Command_delete implements Command,Action {

	//admin 회원탈퇴
	@Override
	public void exe(HttpServletRequest request, HttpServletResponse response) throws NamingException {
		String id = (String)request.getParameter("id");
		System.out.println("delete name : "+id);
		
		Dao_admin dao = new Dao_admin();
		
		dao.delete(id);
	}

	
	//mypage 회원탈퇴 / 비슷한 코드로 삭제를 두 개 만든 이유는 마지막에 jsp로 뿌려주는 장소가 다르기 때문. admin은 회원리스트로 가고, mypage는 home으로
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward=new ActionForward();
		String id = (String)request.getParameter("idQuery");
		System.out.println("delete name : "+id);
		
		HttpSession session = request.getSession();
		session.invalidate();
		Dao_admin dao = new Dao_admin();
		dao.delete(id);
	
		forward.setRedirect(false);
		forward.setPath("/home.jsp");
		return forward;
	}



}
