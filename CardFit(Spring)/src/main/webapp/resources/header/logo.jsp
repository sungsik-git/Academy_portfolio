<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath }/resources/css/header/logo.css" type="text/css" rel="stylesheet">
</head>
<body>
	<img class="logoImg" alt="" src="${pageContext.request.contextPath }/resources/svg/CF_logo_Blue.svg">
</body>
<script type="text/javascript">
const logoBox = document.querySelector(".logoImg");
logoBox.addEventListener("click", function(){
	location.href= "/www/";
})
</script>
</html>