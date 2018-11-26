<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<h1>새로운 이벤트 공지하기</h1>

	<form action ="uploadEvent.am" method ="post">
		<h3>제목</h3>
		<input type="text" name="title">
		<h3>공지내용</h3>
		<input type="text" name="content" style="text-align: left; width: 300px; height: 400px; letter-spacing: -5px">
		<input type="submit" value="올리기"></input>
	</form>
</body>
</html>