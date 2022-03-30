<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl로 화면출력</title>
</head>
<body>
	<h3>회원 리스트</h3>
	<!-- ${list}는 getAttribute 메소드 실행과 동일합니다. 
		list 자료구조의 항목을 하나씩 가져와서 member 이름으로 참조합니다.-->
	<ul>
		<c:forEach var="member" items="${list}" varStatus="status">
			<li>${member.custNo}(${status.index}): ${member.custName} : ${member.phone} :
				${member.addr}</li>
		</c:forEach>
	</ul>
</body>
</html>