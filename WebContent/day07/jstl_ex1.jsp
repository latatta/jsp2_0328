<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>jstl(JavaServer pages Standard Tag Library) ����</title>
</head>
<body>
	<c:set var="age" value="10" />
	age : ${age }
	<!-- �Ϲ������� el ����� c:out �±׷� �մϴ�. -->
	<hr>
	<!-- c:if ������ test���� el�� �ۼ��մϴ�. -->
	<h4>if ~ else ���� : else �ش��ϴ� �±װ� �����ϴ�.</h4>
	<c:if test="${age<20 }">
		<span style="color: red;">û�ҳ��Դϴ�.</span>
	</c:if>
	<hr>
	<c:set var="age" value="24" />
	<c:choose>
		<c:when test="${age < 20 }">
			<!-- if -->
			<div style="color: red;">û�ҳ��Դϴ�.</div>
		</c:when>
		<c:otherwise>
			<!-- else -->
			<div style="color: blue;">�����Դϴ�.</div>
		</c:otherwise>
	</c:choose>



	<!-- ��ũ��Ʈ������ for���� �ۼ��ϴ� �� ��� ��� -->
	<hr>
	<h4>for each</h4>
	<c:forEach var="i" begin="1" end="10" varStatus="status" step="2">
		<c:out value="${i*10 }" />
		<br>
		<!-- for ���۰��� 1, ���������� 10, �������� var�� ���� -->
		<c:out value="${status.index }" />
		<!-- ���° �������� ��Ÿ���� index ���, varStatus�� for ������ ����(���۰�, ��������, step, �������)�� ������ ������ -->
		<br>
	</c:forEach>
	<hr>
	<c:forEach var="no" begin="10" end="20" varStatus="status">
		<c:out value="${no }" />(<c:out value="${status.count }" />)
		<!-- status.count�� ��������� 1���� �����Ͽ� ��Ÿ���� �� -->
	</c:forEach>
	<hr>
	<c:set var="names" value="�糪, ����, ����, ����" />
	<!-- String names = "�糪, ����, ����, ����" -->
	<ul>
		<c:forTokens items="${names }" delims="," var="member">
			<!-- items�� ���ڿ��� , �� �����ؼ� ������� member ������ ������ŵ�ϴ�. -->
			<li><c:out value="${member }" /></li>
		</c:forTokens>
	</ul>
	<hr>
	<h4>�Ķ���� ���� el�� �������� : �Ķ���� ��ü param</h4>
	cnt �Ķ���� : ${param.cnt }<br>
	name �Ķ���� : ${param.name}<br>
</body>
</html>