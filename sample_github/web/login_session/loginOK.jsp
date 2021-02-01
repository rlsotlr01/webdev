<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	if(id.equals("abcde")&&pw.equals("12345")){
		session.setAttribute("id", id);
		// session 은 jsp 내부객체, 이미 만들어져 있음.
		response.sendRedirect("welcome.jsp");
	}else{
		response.sendRedirect("loginForm.jsp");
	}
%>