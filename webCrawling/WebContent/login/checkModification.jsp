<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import="javax.naming.*"%>


<html>
<head>
<meta charset="EUC-KR">
<title>��ܸ��</title>
</head>
<body>



	<%

	//�����Ϸ� ���â��
	
	boolean passBoolean = false;
	
	//Command_mypage���� ������ ������ �ƴ��� Ʈ�� ������ ����� �ѷ���.
	passBoolean= (boolean)request.getAttribute("passBoolean");
	
    System.out.println(passBoolean);
%>

	<%if(passBoolean==true){ %>
	<h2 style="position: fixed; top: 30%; left: 35%">�����Ϸ�</h2>
	<%}else{%>
	<h2 style="position: fixed; top: 30%; left: 20%">����� Ʋ����</h2>
	<%}%>


</body>
</html>

