package frontController;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command_CheckingId;
import command.Command_Join;
import dao.Dao_join;
import dto.Dto_join;
import etc.Action;
import etc.ActionForward;

@WebServlet("*.do")
 public class FrontController_join 
 	extends javax.servlet.http.HttpServlet 
 	implements javax.servlet.Servlet {
	 protected void doProcess(HttpServletRequest request, HttpServletResponse response) 
	 	throws ServletException, IOException {
		 String RequestURI=request.getRequestURI();
		 String contextPath=request.getContextPath();
		 String command=RequestURI.substring(contextPath.length());
		 ActionForward forward=null;
		 Action action=null;
		   
		   if(command.equals("/login.do")){
			   forward=new ActionForward();
			   forward.setRedirect(false);
			   forward.setPath("../login/login.jsp");
		   }else if(command.equals("/join.do")){
			   System.out.println("1");
			   forward=new ActionForward();
			   forward.setRedirect(false);
			   System.out.println("2");
			   forward.setPath("./join.jsp");
			   System.out.println("3?"); 
		   }else if(command.equals("/joinCompleted.do")){
			   action  = new Command_Join();
			   try {
				
				   forward=action.execute(request, response);
			   } catch (Exception e) {
				   e.printStackTrace();
			   }
				
		   }else if(command.equals("/CheckingId.do")){
			   action  = new Command_CheckingId();
			   try {
				   
				   forward=action.execute(request, response);
				   System.out.println("여기까지는 온다");
			   } catch (Exception e) {
				   e.printStackTrace();
			   }
				
		   }
		   
		   if(forward.isRedirect()){
			   System.out.println(forward.getPath());
			   response.sendRedirect(forward.getPath());
		   }else{
			   RequestDispatcher dispatcher=
				   request.getRequestDispatcher(forward.getPath());
			   
			   dispatcher.forward(request, response);
		   }
	 }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
		throws ServletException, IOException {
		doProcess(request,response);
	}  	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
		throws ServletException, IOException {
		doProcess(request,response);
	}   	  	    
}