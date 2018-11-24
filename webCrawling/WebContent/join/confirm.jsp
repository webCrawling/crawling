<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import="javax.naming.*" %>


<html>
<head>
<meta charset="EUC-KR">
<title>명단목록</title>
</head>
<body>

<%
	boolean confirmIds = false;
		confirmIds= (boolean)request.getAttribute("confirmIds");
		
		System.out.println(confirmIds);
%>
     
        <%if(confirmIds==true){ %>
    	  <h2 style="position: fixed; top:30%; left:35%">사용가능</h2>
        <%}else{%>
          <h2 style="position: fixed; top:30%; left:20%">아이디 중복됨ㅋ</h2>
        <%}%>

     
</body>
</html>

