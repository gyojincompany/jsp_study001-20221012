<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공</title>
</head>
<body>
	로그인 성공!<br>
	<%
		Cookie[] cooks = request.getCookies();
		
		for(int i=0;i<cooks.length;i++) {
			out.println("쿠키의 이름:"+cooks[i].getName()+"<br>");
			out.println("쿠키의 값:"+cooks[i].getValue()+"<br>");
		}		
	%>
	<br>
	<a href="cookieDel.jsp">쿠키 삭제</a>
</body>
</html>