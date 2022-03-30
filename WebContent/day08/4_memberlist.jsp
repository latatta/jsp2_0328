<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- 함수 fn은 태그가 아닌 el과 함께 사용합니다. -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 목록 조회/수정</title>
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
			<form action="memberSearch.jsp">
				<select name="column" id="column">
					<option value="name">이름</option>
					<option value="address">주소</option>
					<option value="grade">고객등급</option>
					<option value="city">거주지역</option>
				</select> <span id="content"> <input name="find" id="find"
					placeholder="검색할 내용 입력" value="${find }">
				</span> <span id="grade"> <select name="find" id="grades">
						<!-- 사용자 선택하는 텍스트와 db 테이블에 저장된 값이 다릅니다. -->
						<option value="A">VIP</option>
						<option value="B">일반</option>
						<option value="C">직원</option>
				</select>
				</span>
				<button>검색</button>
				<button type="button" onclick="location.href='memberList.jsp'">전체보기</button>
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
					<td><a style="color: blue;" href="#">${member.custNo }</a></td>
					<td>${member.custName }</td>
					<td>${member.phone }</td>
					<td>${member.address}</td>
					<td>${member.joinDate }</td>
					<td>${member.grade == 'A'? 'VIP' : (member.grade == 'B'? '일반' : '직원')}</td>
					<!-- 조건연산형식 : 조건? 참실행명령문 : 거짓실행명령문 -->
					<%-- 				<c:if test="${member.grade == 'A'}"><td>VIP</td></c:if>
					<c:if test="${member.grade == 'B'}"><td>일반</td></c:if>
					<c:if test="${member.grade == 'C'}"><td>직원</td></c:if> --%>
					<td>${member.city }</td>
				</tr>
			</c:forEach>
			<!-- list의 데이터가 없을 때 list 애트리뷰트가 null X, size가 0 -->
			<c:if test="${fn:length(list)==0 }">
				<tr>
					<td colspan="7">조회결과가 없습니다.</td>
				</tr>
			</c:if>
		</table>
		<hr>
	</section>
	<footer>
		<p>HRDKOREA Copyrightⓒ2016 All rights reserved. Human Resources
			Development Service of Korea</p>
	</footer>
</div>
<script type="text/javascript">
	// selector(. 	, 	# 	태그이름 	>)을 이용해서 
	const sel = document.querySelectorAll("#column>option");	// > 는 자식요소
	const sel2 = document.getElementById('column');		// 1개 요소만 가져옵니다.
	console.log(sel);
	console.log(sel2);
	
	// let status = 1;		// forEach에서 상태를 체크할 때 사용할 변수
	sel.forEach(item => {
		if (/* status == 1 && */ item.value == '${column}') {
			item.selected = 'selected';
			// status = 0;		// column 애트리뷰트값과 일치하는 option 항목일때입니다.
		}
	})
	
	document.querySelectorAll("#grades>option").forEach(item => {
		if (item.value == '${find}') {
			item.selected = 'selected';
			// grade를 선택한것에 따라 일치하는 option을 표시합니다.
		}
	})
	
	/* 화면표시 변경 */
	const grade = document.getElementById('grade');
	// grade.style.display = 'none';		// 안보이게 하는 방법
	const content = document.getElementById('content');	
	if ('${column}' == 'grade') {
		grade.style.display='inline-block';
		content.style.display = 'none';
	} else {
		grade.style.display='none';
		content.style.display = 'inline-block';
	}
	
	document.getElementById('column').addEventListener("change", changeView);
	function changeView() {
		const col = document.forms[0].column.value;
		if (col == 'grade') {
			grade.style.display='inline-block';
			content.style.display = 'none';
			
		} else {
			grade.style.display='none';
			content.style.display = 'inline-block';
		}
	}
	
	var input = document.getElementById('find');
	input.value = null;
		
</script>
</body>
</html>