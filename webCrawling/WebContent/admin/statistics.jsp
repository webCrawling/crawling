<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
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