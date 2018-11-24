<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Dto_join" %>
<%@ page import="java.util.Iterator" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>

<h1 align="center">회원 목록</h1>

<%
	request.setCharacterEncoding("utf-8");
	ArrayList<Dto_join> list_member = (ArrayList<Dto_join>)request.getAttribute("list_member");
	Iterator iter = list_member.iterator();
	
	
	
		
		   
	
	
	
	
	while (iter.hasNext()) {
		Dto_join dto = null;
	    dto = (Dto_join)iter.next();
	    String id = dto.getId();
	    
	   %>  
	  
	   <a href="memberInfo.am?id=<%=id%>">
	   <%out.println(id);%></a>
	   
	   <a href="delete.am?id=<%=id%>">삭제</a>
	   
	   </br>
	   
	   <%}%>
	
	


</body>
</html>