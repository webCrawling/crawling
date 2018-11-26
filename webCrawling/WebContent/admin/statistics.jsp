<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>

<%int sum = 0; %>

<%
	if(request.getAttribute("sum")==null){
		out.println("수입이 없습니다.");
	}
%>


<%if(request.getAttribute("sum")!=null){
	out.println("수입이 있습니다.");

	 sum = (int)request.getAttribute("sum");
} %>

	<h1>총 수입</h1>
	<%=sum %>
</body>
</html>