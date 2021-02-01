<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>자바 코드를 사용한 출력</h1>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	out.println("아이디 : "+id);
	out.println("패스워드 : "+pw);
%>

<h1>표현식 써서 출력</h1>
아이디 : <%=id %>
비밀번호 : <%=pw %>

<h1>Expression Language 써서 표현</h1>
아이디 : ${param.id }
비밀번호 : ${param.pw }
자동 로그인 : ${param.autologin }

</body>
</html>