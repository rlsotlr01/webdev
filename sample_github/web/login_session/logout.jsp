<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String) session.getAttribute("id");
	if(id != null){
		// session.removeAttribute("id"); -> 특정 정보 삭제
		session.invalidate();
		// 로그아웃 하면 세션 정보 초기화. (전체 정보 삭제)
		out.println("<h1>정상적으로 로그아웃</h1>");
	}else{
		response.sendRedirect("loginForm.jsp");
	}
%>
<a href = "loginForm.jsp">다시 로그인</a>
