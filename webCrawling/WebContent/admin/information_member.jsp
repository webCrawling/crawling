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


	<div id="my_container" class="my_sub_page" style="margin-top: 80px;">
		<h1>
			회원 정보 조회 &nbsp;<img src="images/man.png" style="width: 50px">
		</h1>
	</div>

	<div class="my_container2" style="margin-top:0;">
		<span style="font-size:30px; margin-bottom:50px; color:#FFBF00;"><img src="images/check.png" style="width: 30px"> &nbsp; 회원 기본 정보  </span>
		<table style="border-collapse:separate; margin-top:20px; border-spacing: 0 30px;">
			<tr>
				<td align=right>ID :</td>
				<td><%=dto_memberInfo.getId()%></td>
			</tr>

			<tr>
				<td align=right>Password :</td>
				<td><%=dto_memberInfo.getPass()%></td>
			</tr>

			<tr>
				<td align=right>E-mail :</td>
				<td><%=dto_memberInfo.getEmail()%></td>
			</tr>

			<tr>
				<td align=right>Phone :</td>
				<td><%=dto_memberInfo.getPhone()%></td>
			</tr>

		</table>
	</div>

	<div class="my_container3">
		<span style="font-size:30px; margin-bottom:50px; color:#FFBF00;"><img src="images/check.png" style="width: 30px"> &nbsp; 회원 주문 내역</span>
		<table style="border-collapse:separate; margin-top:20px; border-spacing: 0 30px;">
		<%
			while (iter.hasNext()) {
				Dto_order dto_order = (Dto_order) iter.next();

				out.println("<tr><td>" + i + "</td><td>" + dto_order.getMenu()+"</td><td>"+dto_order.getPrice()+"</td></tr>");
				
				i++;
			}
		%>
		
		</table>
		

	</div>
	<div class="my_container4">
<a href="javascript:history.go(-1)"><img src = "images/return.png" style="float:right; width:30px;"></a>
</div>


</body>
</html>