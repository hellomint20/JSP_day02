<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>cookie index</h1>
	
	<%
		boolean bool = true;	
		Cookie[] cookieArr = request.getCookies(); //모든 쿠키 값을 가져옴
		if( cookieArr != null ){
			for(Cookie c : cookieArr){ //최초로는 쿠키값 못 받아옴 (밑에 쿠키설정이 실행되야 쿠키값을 가져옴)
				out.print("name : "+ c.getName()+"<br>");
				out.print("value : "+ c.getValue()+"<br>");
				if(c.getName().equals("testCookie")){
					bool = false;	
				}
			}
		}
		
		//쿠키 설정(생성)
		Cookie cookie = new Cookie("testCookie", "myCookie");
		cookie.setMaxAge(5); //5초 동안 유지
		cookie.setPath("/"); //path 값 설정 (모든 경로에서 사용가능하도록)
		
		response.addCookie(cookie);
	%>
	<% if(bool) {%> <!-- 쿠키 값이 없을 때 띄워줌 -->
	<script type="text/javascript">
		window.open("popup.jsp", "",
					"width=300, height=200, top=500, left=500");
	</script>
	<%}%>
	
</body>
</html>