<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="dao.DBConnect"%>
<%@page import="java.sql.Connection"%>
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
		Connection con = DBConnect.getConnect();
		
		String id = request.getParameter("id");
		
		String sql = "select * from student where id="+id;
		PreparedStatement ps = con.prepareStatement(sql); //명령어 전송 객체
		ResultSet rs = ps.executeQuery();
		System.out.println(rs);
	%>
	<h3>인적 사항</h3>
	<% while(rs.next()) {%>
		학번 : <%= rs.getString("id") %><br>
		이름 : <%= rs.getString("name") %><br>
		학점(국어, 영어, 수학) :  <%= rs.getString("kor") %>,  <%= rs.getString("eng") %>,  <%= rs.getString("math") %>
	<%}%>
</body>
</html>