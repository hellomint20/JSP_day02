<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String DB_id = "1", DB_pwd = "1", DB_nick="1"; //DB 연동 전이라 임시로 설정
		
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		if(id.equals(DB_id) && pwd.equals(DB_pwd)){
			session.setAttribute("nick", DB_nick);	//세션 설정
			session.setAttribute("login", id);	//세션 설정
			response.sendRedirect("main.jsp");	//main.jsp 로 보냄
		}else{
			response.sendRedirect("login.jsp");	//login.jsp 로 보냄
		}
	%>
</body>
</html>