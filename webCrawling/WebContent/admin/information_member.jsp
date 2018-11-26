<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="dto.Dto_join"%>
<%@ page import="dto.Dto_order"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.Iterator"%>

<%
	Dto_join dto_memberInfo = (Dto_join) request.getAttribute("dto_member");
	//Dto_order dto_order = (Dto_order)request.getAttribute("dto_order");

	ArrayList<Dto_order> list_wholeOrder = (ArrayList<Dto_order>) request.getAttribute("dto_wholeOrder");
	Iterator iter = list_wholeOrder.iterator();

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


	<div id="my_container" class="my_sub_page" style="margin-top: 80px; margin-bottom:20px;">
		<h1>
			회원 정보 조회 &nbsp;<img src="images/man.png" style="width: 50px">
		</h1>
	</div>

	<div class="my_container2">
		<span style="font-size:20px">회원 기본 정보</span>
		<table style="border-collapse: separate;border-spacing: 0 30px;">
			<tr>
				<td>ID :</td>
				<td><%=dto_memberInfo.getId()%></td>
			</tr>

			<tr>
				<td>Password :</td>
				<td><%=dto_memberInfo.getPass()%></td>
			</tr>

			<tr>
				<td>E-mail :</td>
				<td><%=dto_memberInfo.getEmail()%></td>
			</tr>

			<tr>
				<td>Phone :</td>
				<td><%=dto_memberInfo.getPhone()%></td>
			</tr>

		</table>
	</div>

	<div class="my_container3">
		<span style="font-size:20px">회원 주문 내역</span>
		<table style="border-collapse: separate;border-spacing: 0 30px;">
		<%
			while (iter.hasNext()) {
				Dto_order dto_order = (Dto_order) iter.next();

				out.println("<tr><td>" + i + "</td><td>" + dto_order.getMenu()+"</td><td>"+dto_order.getPrice()+"</td></tr>");
				
				i++;
			}
		%>
		
		</table>
		

	</div>


</body>
</html>