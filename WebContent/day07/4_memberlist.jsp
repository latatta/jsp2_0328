<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 목록 조회/수정</title>
<link rel="stylesheet" href="0_hrdkorea.css">
<style type="text/css">
td {
	border: 1px solid gray;
}
</style>
</head>
<div class="wrap_container">
	<header>
		<h3 class="header-item">쇼핑몰 회원관리 ver1.0</h3>
	</header>
	<nav class="haeder-nav">
		<ul class="container">
			<li><a href="2_insertForm.jsp">회원등록</a></li>
			<li><a href="4_memberlist.jsp">회원목록조회/수정</a></li>
			<li><a href="7_saleList.jsp">회원매출조회</a></li>
			<li><a href="1_index.jsp">홈으로.</a></li>
		</ul>
	</nav>
	<section>
		<h2 style="text-align: center;" class="section">
			<strong>회원목록조회/수정</strong>
		</h2>
		<div>
			<!-- action url을 현재 url과 같게 했습니다. -->
			<form action="4_memberlist.jsp">
				<select name="column">
					<option value="a">이름</option>
					<option value="b">주소</option>
					<option value="c">고객등급</option>
					<option value="d">거주지역</option>
				</select> <input name="search_name" placeholder="검색할 이름 입력">
				<button>검색</button>
				<button type="button" onclick="location.href='4_memberlist.jsp'">전체보기</button>
			</form>
		</div>
		<table style="width: 90%; margin: auto; text-align: center;">
			<tr style="text-align: center;">
				<td><strong>번호</strong></td>
				<td><strong>이름</strong></td>
				<td><strong>연락처</strong></td>
				<td><strong>주소</strong></td>
				<td><strong>가입일자</strong></td>
				<td><strong>고객등급</strong></td>
				<td><strong>거주지역</strong></td>
			</tr>

			<c:forEach var="member" items="${list}">
				<tr>
					<td>${member.custNo }</td>
					<td>${member.custName }</td>
					<td>${member.phone }</td>
					<td>${member.addr}</td>
					<td>${member.joinDate }</td>
					<td>${member.grade }</td>
					<td>${member.city }</td>
				</tr>
			</c:forEach>
		</table>
		<hr>
	</section>
	<footer>
		<p>HRDKOREA Copyrightⓒ2016 All rights reserved. Human Resources
			Development Service of Korea</p>
	</footer>
</div>
</body>
</html>