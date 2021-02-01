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
	String id = (String) session.getAttribute("id");
	// session 이 저장하는 방식은 HashMap.
	// HashMap<String,Object> -> key 는 String 이 들어가는데, value 가 object 로 들어감.
	// 그래서 getAttribute("id") 하면 Object 나옴. 강제형변환 시켜줘야 함.
	if(id != null && id.equals("abcde")){
		out.println(id+"님 안녕하세요~ <br/>");		
	}else{
		response.sendRedirect("loginForm.jsp");
	}
	
	%>
<a href ="logout.jsp">로그아웃</a>
</body>
</html>