<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 애트리뷰트값 삭제
	application.removeAttribute("vote");
	response.sendRedirect("1_lunchVote.jsp");
%>