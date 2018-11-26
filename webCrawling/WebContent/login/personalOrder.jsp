<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="dto.Dto_join"%>
<%@ page import="dto.Dto_order"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.Iterator"%>

<%
		ArrayList<Dto_order> list = (ArrayList<Dto_order>)request.getAttribute("dto_delivermember");
		String id = null;
		String menu = null;
		int price = 0;
		
		Iterator iterator = list.iterator();
		int i = 1;
		
		 
%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="assets/css/ui.common.css" />
<link rel="stylesheet" type="text/css" href="assets/css/mycss.css" />
<meta charset="utf-8">
<title>회원 정보</title>
</head>
<body>


	<div class="my_container3">
		<span style="font-size:20px">회원 주문 내역</span>
		<table>
<% while(iterator.hasNext()){
	Dto_order dto_order = (Dto_order)iterator.next();
	
	id = dto_order.getId();  
	menu = dto_order.getMenu();
	price = dto_order.getPrice();
      out.println("<tr> <td><h4>"+i+"</h4></td> <td><h4>"+id+
    		  "</h4></td> <td><h4>"+menu+"</h4></td> <td><h4>"+price+"</h4></td><td><a href='deliveryComplete.am?idCheck="+id+"&priceCheck="+price+"&state=0' class='my2'>배달 완료</a></td> </tr>");
      
i++;}%>
</table>
		

	</div>


</body>
</html>