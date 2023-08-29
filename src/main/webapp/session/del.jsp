<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	del page <br>
	<%
		//session.removeAttribute("id"); //하나 세션 만료
		//session.setMaxInactiveInterval(5); //시간 설정 (5초 후 세션 만료)
		session.invalidate(); //현재 생성되어 있는 모든 세션 종료
	%><hr>
		
	<a href="set.jsp">세션 set</a>
	<a href="get.jsp">세션 get</a>
</body>
</html>