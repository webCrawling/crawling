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
		out.println("������ �����ϴ�.");
	}
%>


<%if(request.getAttribute("sum")!=null){
	out.println("������ �ֽ��ϴ�.");

	 sum = (int)request.getAttribute("sum");
} %>

	<h1>�� ����</h1>
	<%=sum %>
</body>
</html>