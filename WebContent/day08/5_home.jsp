<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HOME</title>
</head>
<body>
	<h3>여기는 HOME 입니다.</h3>
	<hr>
	<div>로그인을 했을까요? : ${user!=null}</div>
	<c:if test="${user==null}">
		<div>
			<button type="button" onclick="location.href='3_loginForm.jsp'">로그인</button>
		</div>
	</c:if>
	<c:if test="${user!=null}">
		<h5>${user.name}님환영합니다.</h5>
		<button type="button" onclick="location.href='6_logout.jsp'">로그아웃</button>
	</c:if>
	<script type="text/javascript">
		setTimeout(function() {
			// 파라미터로 처리하는 방법
			if ('${param.logout}' == 'y')
				alert('로그아웃 되었습니다.');
			if ('${param.login}' == 'y')
				alert('로그인 완료되었습니다.');
			if ('${param.login}' == 'n')
				alert('로그인 정보가 옳지 않습니다.');
			
			// 애트리뷰트를 이용하는 방법
			/* if (${not empty message}) 	// message라는 이름의 애트리뷰트가 null이나 길이가 0이 아닌경우
				alert('${message}'); */

		}, 100);
	</script>
	<!-- response.sendRedirect() 는 새로운 요청을 보내는것이고요
pageContext.forward() 는 기존의 요청을 전달해요
그래서 pageContext.forward() 는 request 에 애트리뷰트 저장해보냅니다.session 애트리뷰트를 저장할때에는 모든 jsp페이지에서 데이터를 사용할수 있게되고요
request에 애트리뷰트를 저장할 때에는 pageContext.forward 로 전달할때 그 jsp페이지에서 1번만 데이터를 사용할수 있어요
목적이 달라요
session 에는 말그대로 사용자연결정보와 관련된 데이터, request 에는 출력화면에 보낼 데이터를 저장하는거에요
질문이 있어 답한 내용 공유합니다.
	 -->
</body>
</html>

