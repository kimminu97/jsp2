<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오늘의 점심메뉴 투표 결과</title>
</head>
<body>
	<c:if test="${vote==null }">
			<script type="text/javascript">
				location.href='1_lunchVote.jsp?vote=n';
			</script>
	</c:if>
	<table style="width:70%;margin: auto;">
		<tr><td colspan="3">메뉴 개수 : ${fn:length(vote) }, 
							총투표수 : <span id="total"></span>
			</td>
		</tr>
		<tr><td colspan="3"><hr></td></tr>
		<tr>
			<th style="width:30%;">메뉴이름</th><th>득표수</th>
		</tr>
		<c:set var="total" value="0"/>
		<c:forEach var="entry" items="${vote }">
			<tr>
				<td style="text-align: center;">${entry.key }</td>
				<td style="padding-left: 20px">
		<hr color="tomato" align="left"  size="25px" 
			width="${entry.value*20}px">
				</td>
				<td>${entry.value } 표</td>
			</tr>
			<c:set var="total" value='${total+entry.value}'/>
		</c:forEach>
		<tr><td colspan="3" style="text-align: center;padding-top: 30px;">
			<button type="button" onclick="location.href='1_lunchVote.jsp'">메인으로</button>
		</td></tr>
	</table>
	<script type="text/javascript">
		//alert('${total}');
		document.getElementById('total').innerHTML='${total}';
	</script>
</body>
</html>
