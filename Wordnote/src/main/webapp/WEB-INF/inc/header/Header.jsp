<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath }/resources/css/Header.css" type="text/css" rel="stylesheet">
</head>
<body>
	<div id="header">
		<ul>
			<li><a href="wordTestPage">단어시험</a></li>
			<li><a href="insertWordPage">단어등록</a></li>
			<li><a href="wrongWordPage">오답노트</a></li>
			<li><a href="/www">홈페이지 이동</a></li>
		</ul>
	</div>
</body>
</html>