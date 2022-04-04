<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <!-- prefix : 접두어(단어앞에 들어가는 문자) -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl(JavaServer pages Standard Tag Library) 연습</title>
</head>
<body>
<h4>자바 변수처럼 값을 지정하기</h4>
<hr>
<c:set var="age" value="10"/>
age : ${age } <br>	<!-- 일반적으로 el 출력은 c:out 태그로 합니다. -->
<hr>
<!-- c:if 조건은 test에서 el로 작성합니다 -->
<c:if test="${age<20 }">
	<div style="color:green;">청소년입니다.</div>
</c:if>
<hr>
<h4>if ~ else 형식 : else 해당하는 태그가 없습니다.</h4>
<c:set var="age" value="24"/>
<c:choose>
	<c:when test="${age<20 }">
	<div style="color:green;">청소년입니다.</div>
	</c:when>
	<c:otherwise> <!-- else에 해당하는 부분 -->
	<div style="color=blue;">성인입니다.</div>
	</c:otherwise>
</c:choose>
<!-- 스크립트릿에서 for문을 작성하는 것 대신 사용 -->
<hr>
<h4>for each</h4>
<c:forEach var="i" begin="1" end="10" varStatus="status" step="2">
	<c:out value="${i*10 }"/> <br> <!-- for 시작값은 1, 마지막값은10, 변수명은 var -->
	<c:out value="${status.index }"></c:out>
	<!-- 몇번째 값인지를 나타내는 index출력, varStatus는 for 동작의 상태를 참조할 변수명 -->
</c:forEach>
<hr>
<c:forEach var="no" begin="10" end="20" varStatus="status">
	<c:out value="${no}"/> (<c:out value="${status.count }"></c:out>)
	<!-- status.count는 현재순서를 1부터 시작하여 나타내는 값 -->
</c:forEach>
<hr>
<ul>
<c:set var="names" value="사나,나나,나연,다현"/>	<!-- String names = "사나,나나,나연,다현"-->
<c:forTokens items="${names }" delims="," var="member">
<!-- items의 문자열을 ,로 구분해서 순서대로 member 변수에 참조시킵니다. -->
	<li><c:out value="${member }"></c:out> </li>
</c:forTokens>
</ul>
<hr>
<h4>파라미터값을 el로 가져오기 : 파라미터 객체 param</h4>
<hr>
cnt파라미터 : ${param.cnt } <br>
name 파라미터 : ${param.name }<br>






</body>
</html>