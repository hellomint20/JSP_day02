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
		System.out.println("jsp => "+con); //잘 연결 됬는지 확인용
		
		String sql = "select * from members";
		PreparedStatement ps = con.prepareStatement(sql); //명령어 전송 객체
		ResultSet rs = ps.executeQuery(); //select을 제외하고 executeUpdate 사용
		while(rs.next()){ %>
			id : <%= rs.getString("id") %><br>
			pwd : <%= rs.getString("pwd") %><br>
			name : <%= rs.getString("name") %><br>
			addr : <%= rs.getString("addr") %><br>
			tel : <%= rs.getString("tel") %><br>
			<hr>
		<%}
	%>

</body>
</html>