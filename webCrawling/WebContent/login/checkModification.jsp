<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import="javax.naming.*"%>


<html>
<head>
<meta charset="EUC-KR">
<title>명단목록</title>
</head>
<body>



	<%

	//수정완료 결과창임
	
	boolean passBoolean = false;
	
	//Command_mypage에서 정보가 수정이 됐는지 트루 폴스로 결과를 뿌려줌.
	passBoolean= (boolean)request.getAttribute("passBoolean");
	
    System.out.println(passBoolean);
%>

	<%if(passBoolean==true){ %>
	<h2 style="position: fixed; top: 30%; left: 35%">수정완료</h2>
	<%}else{%>
	<h2 style="position: fixed; top: 30%; left: 20%">비번이 틀렸음</h2>
	<%}%>


</body>
</html>

