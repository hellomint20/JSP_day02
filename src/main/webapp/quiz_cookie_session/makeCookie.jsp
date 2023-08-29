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
		//쿠키 설정(생성)
		Cookie cookie = new Cookie("testCookie", "myCookie");
		cookie.setMaxAge(5); //5초 동안 유지
		cookie.setPath("/"); //path 값 설정 (모든 경로에서 사용가능하도록)
		
		response.addCookie(cookie);
	%>
	<script type="text/javascript">
		window.close();
	</script>
</body>
</html>