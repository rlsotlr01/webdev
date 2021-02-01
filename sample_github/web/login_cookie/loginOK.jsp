<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		if(id.equals("abcde")&&pw.equals("12345")){
			Cookie cookie = new Cookie("id",id);
			// 왜 id만 쿠키를 쓰느냐? 다음 화면에 그 데이터가 필요하기 때문.
			// ~~님 안녕하세요! 라고 출력하기 위함.
			cookie.setMaxAge(60);
			response.addCookie(cookie);
			// 쿠키 생성, 유효기간 설정, 그리고 response 에 그 쿠키를 추가
			response.sendRedirect("welcome.jsp");
			// 그 다음 sendRedirect 를 통해 response 를 그 페이지로 넘겨줌.
		}else{
			response.sendRedirect("loginForm.jsp?msg=error");
		}
	%>
