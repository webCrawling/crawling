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
		int quan=0;
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
<div id="my_container" class="my_sub_page" style="margin-top:80px;" >


<h1 class="my_h1">  회원 주문 내역 &nbsp; <img src="images/order2.png" style="width:50px"> </h1> 

</div>

	<div class="my_container3">
		
		<table>
<% while(iterator.hasNext()){
	Dto_order dto_order = (Dto_order)iterator.next();
	
	id = dto_order.getId();  
	menu = dto_order.getMenu();
	price = dto_order.getPrice(); // 총가격
	quan=dto_order.getQuan();
      out.println("<tr><td><h4>"+i+"</h4></td><td><h4>"+menu+"</h4></td> <td><h4>"+price+"</h4></td> </tr>");
      
i++;}%>
</table>
		

	</div>

<div class="my_container4">
<a href="javascript:history.go(-1)"><img src = "images/return.png" style="float:right; width:30px;"></a>
</div>

</body>
</html>