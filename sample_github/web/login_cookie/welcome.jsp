<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 완료</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies();
		if(cookies != null){
		for(int i=0; i<cookies.length; i++){
			String id = cookies[i].getValue();
			if(id.equals("abcde")){
				cookies[i].setMaxAge(0);
				response.addCookie(cookies[i]);
			}
		}			
		}else{
			response.sendRedirect("loginForm.jsp");
		}
		response.sendRedirect("loginForm.jsp?msg=logout");
	%>
</body>
</html>