<%@page import="test.vo.User"%>
<%@page import="hrd.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String email = request.getParameter("userid");
	String password = request.getParameter("password");
	
	MemberDao dao = MemberDao.getInstance();
	User user = dao.login(email, password);

	if (user == null) {
		response.sendRedirect("5_home.jsp?login=n");		// 파라미터로 처리하는 방법
		
	} else {
		// session 객체에 사용자 정보를 저장
		session.setAttribute("user", user);
		response.sendRedirect("5_home.jsp?login=y");		// 파라미터로 처리하는 방법
	}
%>