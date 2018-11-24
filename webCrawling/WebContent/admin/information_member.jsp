<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="dto.Dto_join" %>
<%@ page import="dto.Dto_order" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Iterator" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
		Dto_join dto_memberInfo = (Dto_join)request.getAttribute("dto_member");
		//Dto_order dto_order = (Dto_order)request.getAttribute("dto_order");
		
		ArrayList<Dto_order> list_wholeOrder = (ArrayList<Dto_order>)request.getAttribute("dto_wholeOrder");
		Iterator iter = list_wholeOrder.iterator();
		
		out.println("<h1>회원 정보</h1>");

		out.println(dto_memberInfo.getId()+"</br>");
		out.println(dto_memberInfo.getPass()+"</br>");
		out.println(dto_memberInfo.getEmail()+"</br>");
		out.println(dto_memberInfo.getPhone()+"</br>");
		
		
		out.println("<h1>회원 주문 내역</h1>");

		int i = 1;
		while(iter.hasNext()){
		Dto_order dto_order = (Dto_order)iter.next();
		
		out.println("-"+i+"-"+"<br>");
		out.println(dto_order.getMenu()+"</br>");
		out.println(dto_order.getPrice()+"</br>");
		out.println("------------------------<br>");
		i++;
		}
		
%>

</body>
</html>