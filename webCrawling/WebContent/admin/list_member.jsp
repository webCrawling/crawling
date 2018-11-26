<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Dto_join" %>
<%@ page import="java.util.Iterator" %>
  


<%
	request.setCharacterEncoding("utf-8");
	ArrayList<Dto_join> list_member = (ArrayList<Dto_join>)request.getAttribute("list_member");
	Iterator iter = list_member.iterator();
	
	%> 
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="assets/css/ui.common.css" />
<link rel="stylesheet" type="text/css" href="assets/css/mycss.css" />
<meta charset="utf-8">
<title>회원 목록</title>
</head>
<body>

<div id="my_container" class="my_sub_page" style="margin-top:80px;" >
<h1>회원 목록 &nbsp;<img src="images/mem_list.png" style="width:50px"></h1>
</div>


<div class="my_container2">

<table style="border-collapse: separate;border-spacing: 0 30px;">
<% 
	while (iter.hasNext()) 
	{
		Dto_join dto = null;
	    dto = (Dto_join)iter.next();
	    String id = dto.getId();
	    
	  out.println("<tr><td> <img src='images/star.png' style='width:35px'></td><td>  <a href='memberInfo.am?id="+id+"'>"+id+"</a> </td> <td> <a href='delete.am?id="+id+"'> 회원 삭제 </a>  </td></tr>"); 
	}
	  %>  
	  
	   
	   

</table>
</div>
	
	
	
	


</body>
</html>