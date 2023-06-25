<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<style type="text/css">
#issuancingContainer {
	position: relative;
	top: 5vh;
	width: 75%;
	margin: 0 auto;
	float: right;
	overflow: auto;
	height: 633px;
	text-align: center;
}

#isuuancingElement {
	width: 80%;
	margin: 10px auto;
	padding: 12px;
	border-radius: 8px;
	height: 180px;
}

#leftBox {
	width: 30%;
	float: left;
}

#rightBox {
	width: 70%;
	float: right;
	text-align: left;
}

#leftBox img {
	width: 80%;
	margin: auto;
}

#rightBox p {
	padding: 2px;
}
</style>
</head>
<body>
	<c:import url="../CounsellerPage.jsp" />
	<c:set var="now" value="<%=new java.util.Date()%>" />
	<div id="issuancingContainer">
		<h2>현재 발급을 진행중인 카드리스트입니다.</h2>
		<br>
		<p>배경색 별로 남은 시간이 구분돼요 !</p>
		<c:forEach items="${list}" var="list">
			<c:set var="contactableDateS"
				value="${fn:split(list.contactableDate, '~')[0]}" />
			<c:set var="contactableDateE"
				value="${fn:split(list.contactableDate, '~')[1]}" />

			<%-- 문자열을 날짜로 변환 --%>
			<fmt:parseDate value="${contactableDateS}" var="parsedDateS"
				pattern="yyyy-MM-dd" />
			<fmt:parseDate value="${contactableDateE}" var="parsedDateE"
				pattern="yyyy-MM-dd" />

			<div id="isuuancingElement"
				style="background-color:
      <c:choose>
        <c:when test="${parsedDateS gt now}">
          #A4A4FB; 
        </c:when>
        <c:when test="${parsedDateS lt now && now lt parsedDateE}">
          #FFF289; 
        </c:when>
        <c:when test="${parsedDateE gt now}">
          #FFC9C9; 
        </c:when>
      </c:choose>
      ">
				<div id="leftBox">
					<img alt="" src="./CardIMG/${list.img }">
				</div>
				<div id="rightBox">
					<h2>${list.cardName }</h2>
					<p>고객명 : ${list.userName }</p>
					<p>고객전화번호 : ${list.phone }</p>
					<p>발급신청일 : ${list.requestDate }</p>
					<p>연락가능 날짜 : ${list.contactableDate }</p>
					<p>연락가능 시간 : ${list.startTime } ~ ${list.endTime }</p>
					<input type="button" value="발급완료" class="clearBtn"> 
					<input type="hidden" value="${list.cardName }" name="cardName">
					<input type="hidden" value="${list.num }" name="num">
				</div>
			</div>
		</c:forEach>

	</div>
	<script src="../js/jquery.js" type="text/javascript"></script>
	<script>
		$(document).ready(function() {
			$('body').on('click', 'input[type="button"]', function(e) {
				e.preventDefault();

				var cardName = $('input[name="cardName"]').val();
				var num = $('input[name="num"]').val();

				$.ajax({
					url : 'counsellerClearIssuance.do',
					type : 'POST',
					data : {
						"cardName" : cardName,
						"num" : num
					},
					dataType : 'text',
					success : function(response) {
						alert("치리가 완료되었습니다.");
						location.reload();
					},
					error : function(xhr, status, error) {
						console.error(error);
					}
				});
			});
		});
	</script>

</body>
</html>