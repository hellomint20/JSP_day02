<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	view page<br><br>
	<%
		int cnt = (Integer)application.getAttribute("num");
		cnt++;
		application.setAttribute("num", cnt);
	%>
	<%--
		String cnt = (String)application.getAttribute("cnt");
		out.print(cnt);
		if(cnt == null)
			application.setAttribute("cnt", 1+"");
		else{
			int c = Integer.parseInt(cnt);
			application.setAttribute("cnt", ++c +"");
			}
	 --%>
	jsp application 을 이용한 조회수 올리기<br>
	<a href="board.jsp">돌아가기</a>
</body>
</html>