<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="dto.Dto_join" %>
<%@ page import="dto.Dto_order" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Iterator" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>

<%
		ArrayList<Dto_order> list_deliverAdmin = (ArrayList<Dto_order>)request.getAttribute("dto_deliverAdmin");
		String id = null;
		String menu = null;
		int price = 0;
		
		
		
		 Iterator iterator = list_deliverAdmin.iterator();
		
		out.println("<h1>배달 관리</h1>");

		int i = 1;
		while(iterator.hasNext()){
			
		Dto_order dto_order = (Dto_order)iterator.next();
		
		id = dto_order.getId();
		menu = dto_order.getMenu();
		price = dto_order.getPrice();
		
		out.println("-"+i+"-"+"<br>");
		out.println(id+"</br>");
		out.println(menu+"</br>");
		out.println(price+"</br>");
		out.println("------------------------<br>");%>
		<a href="deliveryComplete.am?idCheck=<%=id%>&priceCheck=<%=price%>&state=0">배달 완료</a>
		<%
		i++;
		}
		 
%>




</body>
</html>