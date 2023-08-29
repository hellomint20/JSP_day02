<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	board page<br><br>
	
	<% 
		if(application.getAttribute("num") == null)
			application.setAttribute("num", 0); %>
	
	<table border="1">
	<tr>
		<th>게시글</th> <th>조회수</th>
	</tr>
	<tr>
		<td><a href="view.jsp">안녕하세요</a></td> <td><%= application.getAttribute("num") %></td>
	</tr>
	</table>
	<%-- 
	<% td 부분
		if(application.getAttribute("num") == null){
			out.print(0);
		}else{%>
			<%= application.getAttribute("num")%>
		<%}%>
	--%>
</body>
</html>