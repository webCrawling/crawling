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
<title>배달 관리</title>
<link rel="stylesheet" type="text/css" href="assets/css/ui.common.css" />
<link rel="stylesheet" type="text/css" href="assets/css/mycss.css" />
</head>
<body>

<%
		ArrayList<Dto_order> list_deliverAdmin = (ArrayList<Dto_order>)request.getAttribute("dto_deliverAdmin");
		String id = null;
		String menu = null;
		int quan=0;
		int price = 0;
		
		Iterator iterator = list_deliverAdmin.iterator();
		int i = 1;
		
		 
%>
<div id="my_container" class="my_sub_page" style="margin-top:80px;" >


<h1 class="my_h1">  배달 현황 &nbsp; <img src="images/delivery.png" style="width:50px"> </h1> 

</div>

<div class="my_container2">

<table>
<% while(iterator.hasNext()){
	Dto_order dto_order = (Dto_order)iterator.next();
	
	id = dto_order.getId();  
	menu = dto_order.getMenu();
	price = dto_order.getPrice();
	quan=dto_order.getQuan();
      out.println("<tr> <td><h4>"+i+"</h4></td> <td><h4>"+id+
    		  "</h4></td> <td><h4>"+menu+"</h4></td> <td><h4>"+price+"</h4></td><td><a href='deliveryComplete.am?idCheck="+id+"&priceCheck="+price+"&state=0' class='my2'>배달 완료</a></td></tr>");
      
i++;}%>
</table>
</div>

<div class="my_container4">
<a href="javascript:history.go(-1)"><img src = "images/return.png" style="float:right; width:30px;"></a>
</div>



</body>
</html>