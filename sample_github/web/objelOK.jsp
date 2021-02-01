<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>이건 자바 코드를 사용한 출력</h2>
<%
	// request 를 불러온다.
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	out.println("아이디 : "+id);
	out.println("비밀번호 : "+pw);
%>
<br>
<h2>표현식을 사용한 출력</h2>
아이디 : <%=id %>
비밀번호 : <%=pw %>

<h2>EL 사용한 출력</h2>
아이디 : ${param.id }
비밀번호 : ${param.pw }

아이디 : ${param["id"] }
비밀번호 : ${param["pw"] }

<h2>저장에 저장된 값 출력</h2>
<!-- setAttribute 한 값 쓸거 -->
applicationScope : ${applicationScope.application_name }
sessionScope : ${sessionScope.session_name }
requestScope : ${requestScope.request_name }
pageContextScope : ${pageContextScope.page_name }
</body>
</html>


