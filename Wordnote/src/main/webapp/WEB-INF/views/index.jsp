<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main Page</title>
<style type="text/css">
img{
	width:1920px;
	height: 800px;
}
</style>
</head>
<body>
	<c:import url="../inc/header/Header.jsp"></c:import>
	<img alt="" src="${pageContext.request.contextPath }/resources/svg/bg.svg">
</body>
</html>