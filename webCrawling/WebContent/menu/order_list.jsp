<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>order_list</title>
</head>
<body>
	
<%
	String id =(String)session.getAttribute("id");
	String phone = request.getParameter("phone");
	
	String menu = null;
	int price = 0;
%>

<%
	
	// 주문 내역 가져오기
	String[] check = request.getParameterValues("check");	// check된 메뉴 목록
	String[] field = request.getParameterValues("field");	// check된 메뉴들의 가격
			
	// 가격을 int타입으로 파싱
	int[] parsing = new int[field.length];
			
	for(int i =0 ; i<field.length ; i++) {
		parsing[i] = Integer.parseInt(field[i]);
	}
			
	// 총 금액	
	for(int i=0;i<check.length;i++) {	
		price = price + parsing[i];
	}
			
%>


<h1><%=id%>님 주문 완료 되었습니다.</h3>

<h2>주문 내역</h2>
<% for(int i = 0 ; i<field.length ; i++){
		out.println("<ul>");
		out.println("<li>"+check[i]+" - "+field[i]+"</li>");
		out.println("</ul>");
}%>

<h2>총 가격</h2>
<%=price %><br>




	
	
</body>
</html>