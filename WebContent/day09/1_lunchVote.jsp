<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%

	// 투표실행은 여기서부터
	// 처리내용 예시
	// 투표하려면 로그인해야한다. 또는 로그인 없이 투표할 수 있다.
	
	String vote_yn = request.getParameter("vote");
	if (vote_yn != null && vote_yn.equals("n"))
		request.setAttribute("message", "투표참여자가 아직 없습니다. 투표 후 결과를 보세요.");
	
	pageContext.forward("2_voteForm.jsp");
%>