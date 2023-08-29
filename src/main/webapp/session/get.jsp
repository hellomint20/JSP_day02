<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	get page <br><br>
	
	id : <%= session.getAttribute("id") %><br> <!-- 바로 출력 -->
	<% String name = (String)session.getAttribute("name"); %> <!-- 변수로 설정 시 형변환 필요 -->
	name : <%= name %><hr>
	
	<a href="set.jsp">세션 이동</a>
	<a href="del.jsp">세션 삭제</a>
</body>
</html>