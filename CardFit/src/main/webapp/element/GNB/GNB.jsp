<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<script src="https://kit.fontawesome.com/cecdbf634a.js"
	crossorigin="anonymous"></script>
<style>
@font-face {
    font-family: 'Pretendard-Regular';
    src: url('https://cdn.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff') format('woff');
    font-weight: 400;
    font-style: normal;
}
* {
	font-family: Pretendard-Regular;
	padding: 0;
	margin: 0;
}

#GNB li {
	color: black;
	list-style: none;
	float: left;
	margin: auto 1vw;
	font-size: 18px;
	cursor: pointer;
	line-height: 50px;
}

#GNB li a {
	color: black;
	text-decoration: none;
}

#GNB {
	left: 497px;
	width: auto;
	height: 50px;
	position: absolute;
	top: 34px;
	text-align: left;
	float: left;
	
}

#GNB ul {
  list-style: none;
  padding: 0;
  margin: 0;
}


</style>
</head>
<body>
	<nav id="GNB">
		<ul>
			<li id="control1">서비스 소개</li>
			<li id="control2">나에게 맞는 카드</li>
			<li id="control3">카드 순위</li>
		</ul>
	</nav>
	<script type="text/javascript" src="./js/jquery.js"></script>
	<script type="text/javascript">
	$(document).ready(function() {
	    $("#control1").on('click', function(event) {
	        // 현재 페이지 URL을 가져옵니다.
	        var currentPageUrl = window.location.href;

	        // 현재 페이지 URL이 "index.do"인 경우에만 스크롤 이벤트를 실행합니다.
	        if (currentPageUrl === "http://localhost:8080/CardFit/index.do") {
	            // 스크롤할 위치의 Y 좌표를 지정합니다. 예시로 900으로 설정합니다.
	            var scrollTo = 900;
	            event.preventDefault(); // 기본 동작을 막음

	            // 페이지의 위치로 스크롤 이동합니다.
	            $('html, body').animate({
	                scrollTop: scrollTo
	            }, 300);
	        } else {
	            window.location.href = "index.do"; // index.do로 페이지 이동
	        }
	    });
	});
	
	$(document).ready(function() {
	    $("#control2").on('click', function(event) {
	        // 현재 페이지 URL을 가져옵니다.
	        var currentPageUrl = window.location.href;

	        if (currentPageUrl === "http://localhost:8080/CardFit/index.do") {
	            // 스크롤할 위치의 Y 좌표를 지정합니다. 예시로 900으로 설정합니다.
	            var scrollTo = 2100;
	            event.preventDefault(); // 기본 동작을 막음

	            // 페이지의 위치로 스크롤 이동합니다.
	            $('html, body').animate({
	                scrollTop: scrollTo
	            }, 300);
	        } else {
	            window.location.href = "index.do"; // index.do로 페이지 이동
	        }
	    });
	});
	
	$(document).ready(function() {
	    $("#control3").on('click', function(event) {
	        // 현재 페이지 URL을 가져옵니다.
	        var currentPageUrl = window.location.href;

	        // 현재 페이지 URL이 "index.do"인 경우에만 스크롤 이벤트를 실행합니다.
	        if (currentPageUrl === "http://localhost:8080/CardFit/index.do") {
	            // 스크롤할 위치의 Y 좌표를 지정합니다. 예시로 900으로 설정합니다.
	            var scrollTo = 3000;
	            event.preventDefault(); // 기본 동작을 막음

	            // 페이지의 위치로 스크롤 이동합니다.
	            $('html, body').animate({
	                scrollTop: scrollTo
	            }, 300);
	        } else {
	            window.location.href = "index.do"; // index.do로 페이지 이동
	        }
	    });
	});
    </script>
</body>
</html>