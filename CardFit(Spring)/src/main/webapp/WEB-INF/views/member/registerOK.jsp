<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원가입 완료</title>
<link rel="shorcut icon" type="image/x-icon" href="./source/svg/CF_logo_Symbol.svg">
<link href="./element/Default/Default.css" type="text/css" rel="stylesheet">
<style type="text/css">
#loginOKContainer {
	position: relative;
	top: 110px;
	width: 100%;
	height: 730px;
	display: flex; 
	justify-content: center; 
	align-items: center; 
}

#messageContainer {
	text-align: left;
}

#messageContainer input[type="button"]{
	width:45%;
	background-color: #E6EDFE;
	color: #0042EC;
	border: none;
	padding: 12px 5px;
	font-size: 16px;
	margin: 0 auto;
	margin-left: 10px;
}
</style>
</head>
<body>
	<c:import url="./element/Header/Header.jsp"/>
	<div id="loginOKContainer">
		<div id="messageContainer">
			<h1>환영합니다!</h1><br>
			<h3>새로운 카드핏 회원이 되신걸 환영합니다!</h3><br>
			<p>로그인을 하시고 서비스를 이용하시면 보다 편안하게 카드를 발급받아보실 수 있어요!<p><br>
			<input type="button" value="로그인 화면으로 돌아가기" id="goLoginBtn">
			<input type="button" value="홈페이지로 돌아가기" id="goHomeBtn">
		</div>
	</div>
    <script type="text/javascript" src="./js/jquery.js"></script>
    <script type="text/javascript">
    $(document).ready(function() {
    	  $("#goLoginBtn").on("click", function() {
    	    window.location.href = "login.do";
    	  });
    	});
    
	var goHomeBtn = document.querySelector('#goHomeBtn');
	goHomeBtn.addEventListener('click',function(){
		window.location.href = "index.do";
	})
    </script>
</body>
</html>