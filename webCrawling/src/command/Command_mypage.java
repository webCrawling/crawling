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
		String id = (String)session.getAttribute("id"); //�������κ��� ���̵��� �޾ƿ�
	
		String pass = request.getParameter("passQuery");
		String modifiedpass = request.getParameter("modifiedpassQuery");
		String email = request.getParameter("emailQuery");
		String phone = request.getParameter("phoneQuery");


		System.out.println(pass);
		System.out.println(modifiedpass);
		System.out.println(email);
		System.out.println(phone);
		
		//��й�ȣ �̸��� �ڵ�����ȣ ���� ���� ����. �����̵� Ʈ���̵� �������. ���� = �ΰ��� ���� ���ϵ�, Ʈ�� = �Է��� ������ ������ ���ϰ�
		passBoolean = mypage.passModification(id, pass, modifiedpass);
		emailBoolean = mypage.emailModification(id, email);
		phoneBoolean = mypage.phoneModification(id, phone);
		
		//�����ϰ� ���� checkModification���� ����� ����
		request.setAttribute("passBoolean", passBoolean);
		
		forward.setRedirect(false);
   		forward.setPath("/login/checkModification.jsp"); 
   		System.out.println(forward.getPath());
		return forward;
	}

}
