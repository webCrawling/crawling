package command;

import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Dao_mypage;
import etc.Action;
import etc.ActionForward;
import etc.Command;

public class Command_mypage implements Action {
	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub

		Dao_mypage mypage = new Dao_mypage();
		ActionForward forward=new ActionForward();
		boolean passBoolean = false;
		boolean emailBoolean = false;
		boolean phoneBoolean = false;
		
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id"); //세션으로부터 아이디값을 받아옴
	
		String pass = request.getParameter("passQuery");
		String modifiedpass = request.getParameter("modifiedpassQuery");
		String email = request.getParameter("emailQuery");
		String phone = request.getParameter("phoneQuery");


		System.out.println(pass);
		System.out.println(modifiedpass);
		System.out.println(email);
		System.out.println(phone);
		
		//비밀번호 이메일 핸드폰번호 수정 검증 과정. 폴스이든 트루이든 상관없음. 폴스 = 널값이 들어가서 리턴됨, 트루 = 입력한 값으로 수정된 리턴값
		passBoolean = mypage.passModification(id, pass, modifiedpass);
		emailBoolean = mypage.emailModification(id, email);
		phoneBoolean = mypage.phoneModification(id, phone);
		
		//수정하고 나서 checkModification으로 결과를 보냄
		request.setAttribute("passBoolean", passBoolean);
		
		forward.setRedirect(false);
   		forward.setPath("/login/checkModification.jsp"); 
   		System.out.println(forward.getPath());
		return forward;
	}

}
