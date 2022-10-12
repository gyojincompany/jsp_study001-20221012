<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 확인</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	
		String memberId = request.getParameter("id");
		String memberPw = request.getParameter("pw");
		
		if(memberId.equals("tiger") && memberPw.equals("12345")) {
			Cookie cookie_id = new Cookie("memberId", memberId);
			Cookie cookie_pw = new Cookie("memberPw", memberPw);
			
			response.addCookie(cookie_id);
			response.addCookie(cookie_pw);			
			
			response.sendRedirect("loginSuccess.jsp");
		} else {
			response.sendRedirect("loginFail.jsp");
		}
	
	%>
</body>
</html>