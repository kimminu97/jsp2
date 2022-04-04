<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl로 화면출력</title>
</head>
<body>
	<h3>회원 리스트</h3>
	<!-- ${list }는 getAttribute -->
	<ul>
	<c:forEach var="member" items="${list }" varStatus="status">
		<li>${member.custNo}(${status.index}) : ${member.custName } : ${member.phone } :${member.address } </li>
		
	</c:forEach>
	</ul>
</body>
</html>