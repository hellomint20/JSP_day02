<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	login page <br><br>
	
	<% if(session.getAttribute("nick") != null) {%>
		<%= session.getAttribute("nick") %>님 로그인 상태입니다<br><br>
		<a href="main.jsp">메인으로 이동</a>
	<%}else{%>
		<form action="chkUser.jsp" method="post">
			<input type="text" name="id"><br>
			<input type="text" name="pwd"><br>
			<input type="submit" value="로그인">
		</form>
	<%}%>
</body>
</html>