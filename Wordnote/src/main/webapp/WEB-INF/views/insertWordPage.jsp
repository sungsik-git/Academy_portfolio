<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- <link href="/resources/css/InsertWordPage.css" type="text/css" rel="stylesheet"> -->
<style type="text/css">
@font-face {
    font-family: 'KyoboHandwriting2020A';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2112@1.0/KyoboHandwriting2020A.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
*{
	margin: 0;
	padding : 0;
	font-family: KyoboHandwriting2020A;
	hight: 100;
}
body{
	width:1800px;
}
#insertBox{
	width:40%;
	float:left;
	text-align: center;
	display: flex;
    justify-content: center;
    align-items: center;
}
#insertWord{
	margin:0 auto;
}
input[type=submit]{
	width: 100%;
	background-color: white;
	padding:8px 4px;
	font-size: 30px;
}
input[type=text], #insertWord table tr td{
	font-size: 30px;
}

#listBox{
	width:60%;
	overflow: scroll-y;
	margin:0 auto;
	text-align: center;
	float: right;
}
#listBox table{
	width: 60%;
}
#listBox table tr td{
	border-bottom: black 2px solid;

}
</style>
<title>Insert title here</title>
</head>
<body>
	<c:import url="../inc/header/Header.jsp"></c:import>
	<div id="insertBox">
		<form action="insertWord">
			<table>
				<tr>
					<td>영어</td>
					<td>뜻</td>
				</tr>
				<tr>
					<td><input type="text" name="eng" required="required"></td>
					<td><input type="text" name="kor" required="required"></td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="등록">
					</td>
				</tr>
			</table>
		</form>
	</div>
	<div id="listBox">
		<table>
			<tr>
				<td>번호</td>
				<td>단어</td>
				<td>뜻</td>
				<td>상태</td>
			</tr>
			<c:forEach items="${list}" var="list">
				<tr>
					<td>${list.num }</td>
					<td>${list.eng }</td>
					<td>${list.kor }</td>
					<c:if test="${list.clear eq 0 }">
						<td style="background-color: red"></td>
					</c:if>
					<c:if test="${list.clear eq 1 }">
						<td style="background-color: green"></td>
					</c:if>
				</tr>
			</c:forEach>
		</table>	
	</div>
</body>
</html>