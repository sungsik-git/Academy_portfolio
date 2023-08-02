<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>로그인</title>
 <link rel="shorcut icon" type="image/x-icon" href="./resources/svg/CF_logo_Symbol.svg">
<!-- 부트스트랩 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<!-- CSS -->
<link href="${pageContext.request.contextPath }/resources/css/member/login.css" type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/css/basic.css" type="text/css" rel="stylesheet">
</head>
<body>
	 <c:import url="../../../resources/header/header.jsp" />
	<div id="loginContainer">
		<p id="title">로그인</p>
		<form action="${pageContext.request.contextPath }/member/loginOK" id=loginBox method="post">
			<div class="mb-3">
				<label for="id" class="form-label">아이디</label> 
				<input type="text" class="form-control" id="id" name="id">
			</div>
			<div class="mb-3">
				<label for="pw" class="form-label">비밀번호</label> <input
					type="password" class="form-control" id="pw" name="pw"> <br>
					<c:set value="${result }" var="result" />
				<c:if test="${result eq 1 }">
					<p id="errorMSG" style="color: red;">아이디와 비밀번호를 다시 확인해주세요.</p>
				</c:if>
			</div>
			<div id="btnBox">
				<div id="leftBox" class="align-middle">
					<input class="form-check-input" type="checkbox" id="flexSwitchCheckDefault"> <label
						class="form-check-label" for="flexSwitchCheckDefault"> <span>아이디 저장</span>
					</label>
				</div>
				<div id="rightBox">
					<span><a href="${pageContext.request.contextPath }/member/emailIdentify">회원가입 &nbsp;&nbsp;&nbsp;</a></span><span
						id="searchIDPW">아이디/비밀번호 찾기</span>
				</div>
			</div>
			<input type="submit" value="로그인" id="loginBtn">
		</form>
	</div>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/js/Login.js" type="text/javascript"></script>
</body>
</html>