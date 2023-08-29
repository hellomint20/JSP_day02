<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	test page <br><br>
	<!-- scope<br>
	- 설정 값이 유지되는 범위<br>
	&nbsp;-page : 현재 페이지까지만 유지 <br>
	&nbsp;-request : 현재 페이지 또는 다음 페이지까지 유지<br>
	&nbsp; (단, 다음 페이지까지 유지 시키려면 forward를 이용 해야 함)<br>
	&nbsp;-session : 웹 브라우저가 살아있는 동안 유지<br>
	&nbsp;-application : 서버가 살아있는 동안 유지<hr> -->

	<% 
		pageContext.setAttribute("name", "page"); 
		request.setAttribute("name", "request"); 
		session.setAttribute("name", "session"); 
		application.setAttribute("name", "application"); 
		
		request.getRequestDispatcher("test2.jsp").forward(request, response); //추가
	%>
	page : <%= pageContext.getAttribute("name")  %><br>
	request : <%= request.getAttribute("name")  %><br>
	session : <%= session.getAttribute("name")  %><br>
	application : <%= application.getAttribute("name")  %><br>
	<a href="test2.jsp">test2 설정 확인</a>
</body>
</html>