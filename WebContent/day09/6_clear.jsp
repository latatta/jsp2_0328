<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 쿠키 CHECK 삭제하기(필요할 때를 위한 테스트)
	Cookie[] cookies = request.getCookies();
	Cookie temp = null;
	for (Cookie c : cookies) {
		if (c.getName().equals("CHECK")) {
			temp = c;
		}
	}
	
	if (temp != null) {
		temp.setMaxAge(0);			// 쿠키 삭제 방법
		response.addCookie(temp);
	}
	// 애트리뷰트값 삭제
	application.removeAttribute("vote");
	response.sendRedirect("1_lunchVote.jsp");
%>