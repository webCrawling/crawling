package frontController;

import java.io.IOException;

import javax.naming.NamingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command_memList;
import command.Command_order;
import command.Command_orderList_member;
import etc.Command;

/**
 * Servlet implementation class FrontController_pageGo
 */
@WebServlet("*.go")
public class FrontController_pageGo extends HttpServlet {
   private static final long serialVersionUID = 1L;

   public FrontController_pageGo() {
   }

   protected void doGet(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
      System.out.println("doGet");
      goPage(request, response);
   }

   protected void doPost(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
      System.out.println("doPost");
      goPage(request, response);

   }

   public void goPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

      String forward = null;
      
      String uri = request.getRequestURI();
      String contextPath = request.getContextPath();
      String com = uri.substring(contextPath.length());

      System.out.println("go to " + com);

      if (com.equals("/join1.go")) {
         
         forward = "/join/join1.jsp";
         
      }else if(com.equals("/join2.go")) {
    	  forward = "/join/join2.jsp";
    	  
      }
      
      //brand
      if (com.equals("/esg.go")) {
    	  forward = "/brand/esg.jsp";
    	  
      }else if(com.equals("/legacy.go")) {
    	  forward = "/brand/legacy.jsp";
    	  
      }else if(com.equals("/philosophy.go")) {
    	  forward = "/brand/philosophy.jsp";
    	  
      }else if(com.equals("/story.go")) {
    	  forward = "/brand/story.jsp";
      }
      
      //event
      if (com.equals("/event_list.go")) {
    	  forward = "/event/event_list.jsp";
    	 
      }else if(com.equals("/store_event_list.go")) {
    	  forward = "/event/store_event_list.jsp";
    	  
      }
      //footer 
      
      //franchise
      if (com.equals("/briefing.go")) {
    	  forward = "/franchise/briefing.jsp";//attention
    	  
      }else if(com.equals("/calc.go")) {
    	  forward = "/franchise/calc.jsp";
    	  
      }else if(com.equals("/hansot_store.go")) {
    	  forward = "/franchise/hansot_store.jsp";
    	  
      }else if(com.equals("/process.go")) {
    	  forward = "/franchise/process.jsp";
    	  
      }else if(com.equals("/qna.go")) {
    	  forward = "/franchise/qna.jsp";//attention
    	  
      }else if(com.equals("/success.go")) {
    	  forward = "/franchise/success.jsp";
     
      }
      
      //hansot
      if(com.equals("/award.go")) {
    	  forward = "/hansot/award.jsp";
    	  
      }else if(com.equals("/history.go")) {
    	  forward = "/hansot/history.jsp";
    	  
      }else if(com.equals("/location.go")) {
    	  forward = "/hansot/location.jsp";
      
      }else if(com.equals("/news_list.go")) {
    	  forward = "/hansot/news_list.jsp";
    	  
      }else if(com.equals("/promise.go")) {
    	  forward = "/hansot/promise.jsp";
    	  
      }else if(com.equals("/social.go")) {
    	  forward = "/hansot/social.jsp";
    			 
      }else if(com.equals("/vision.go")) {
    	  forward = "/hansot/vision.jsp";
    	  
      }

      //menu
      if(com.equals("/chancha.go")) {
    	  forward = "/menu/chancha.jsp";
    	  
      }else if(com.equals("/material.go")) {
    	  forward = "/menu/material.jsp";
    	  
      }else if(com.equals("/menu_keyword.go")) {
    	  forward = "/menu/menu_keyword.jsp";
    	  
      }else if(com.equals("/menu_list.go")) {
    	  forward = "/menu/menu_list.jsp";
    	  
      }else if(com.equals("/menu_order.go")) {
    	  forward = "/menu/menu_order.jsp";
    	  
      }//order_list, order Á¦¿Ü
      
      //store
      if(com.equals("/store_find.go")) {
    	  forward = "/store/store_find.jsp";
      }
      
      //home
      if(com.equals("/home.go")) {
    	  forward = "home.jsp";  
      }
      
      //my page
      if(com.equals("/mypage.go")) {
    	  forward = "/login/mypage.jsp";  
      }else if(com.equals("/personalOrder.go")) {
    	  
    	  Command command = new Command_orderList_member();
			try {
				command.exe(request, response);
			} catch (NamingException e) {
				e.printStackTrace();
			}
    	  forward = "/login/personalOrder.jsp";
    	  
      }
      RequestDispatcher dis = request.getRequestDispatcher(forward);
      dis.forward(request, response);
      
      

   }

}