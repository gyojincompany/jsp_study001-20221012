<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 삭제</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies();
		
		for(int i=0;i<cookies.length;i++) {
			
			cookies[i].setMaxAge(0);//쿠키 삭제
			response.addCookie(cookies[i]);			
		}
		response.sendRedirect("loginSuccess.jsp");
	
	%>
</body>
</html>