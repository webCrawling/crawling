package command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Dao_join;
import dto.Dto_join;
import etc.Action;
import etc.ActionForward;

// 로그인 버튼 클릭
public class Command_home implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Dao_join dao=new Dao_join();
	   	Dto_join dto=new Dto_join();
	   	ActionForward forward=new ActionForward();
		String id = null;
		String pwd = null;
		boolean confirmIds = false;
		
		try {
			// 입력한 id,pw 받아옴
			id = (String)request.getParameter("userid1");
			pwd = (String)request.getParameter("userpwd1");
			
			// 로그인 성공시 true 실패시 false 반환
			confirmIds = dao.login(id,pwd);

			// 로그인 성공시 세션 처리 및 페이지 이동
			if(confirmIds==true) {
				HttpSession session = request.getSession();
				session.setAttribute("id", id);
				
				forward.setRedirect(false);
		   		forward.setPath("first_home.do");
	   			return forward;
			}
			
			// 로그인 실패시 다시 로그인 페이지로 이동
			else {
				forward.setRedirect(false);
				
		   		forward.setPath("login.do");
	   			return forward;
			}
			
   		
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		
		return forward;
	}

}
