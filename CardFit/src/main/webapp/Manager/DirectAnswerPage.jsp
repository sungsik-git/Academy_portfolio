<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>관리자 페이지</title>
 <link rel="shorcut icon" type="image/x-icon" href="./source/svg/CF_logo_Symbol.svg">

<style type="text/css">
#directContainer {
  width: 100%;
  height: 300px;
  padding-bottom: 50px;
}

#directTable,
#answerTable {
  width: 100%;
  border-collapse: collapse;
}

#answerTable p:first-child{
	margin : 30px auto;
	background-color: #0042EC;
	color: white;
}

#directTable th,
#directTable td,
#answerTable th,
#answerTable td {
  padding: 12px;
  border-bottom: 1px solid #ddd;
  text-align: left;
  font-size: 16px;
}

#directTable th,
#answerTable th {
  width: 30%;
  background-color: #f2f2f2;
  text-align: center;
}

#directTable td,
#answerTable td {
  width: 70%;
  max-height: 100px; 
  overflow: auto;
  padding: 8px;
  white-space: pre-wrap; 
  word-break: break-all; 
  }

#directTable td::-webkit-scrollbar {
  width: 5px;
  background-color: #f2f2f2;
}

#directTable td::-webkit-scrollbar-thumb {
  background-color: #888;
}

#directTable td::-webkit-scrollbar-track {
  background-color: #f2f2f2;
}

#answerTable {
  margin-top: 20px;
}

#answerTable th {
  background-color: #f2f2f2;
  text-align: center;
}

#answerTable td {
  padding: 8px;
}

#answerTable img {
  display: block;
  margin: 10px auto;
  width: 50%;
}

</style>

</head>
<body>
	<div id="directContainer">
		<c:set var="idto" value="${inqirydto }"/>
		<table id="directTable">
			<tr>
				<th>제목</th>
				<td>${idto.title }</td>
			</tr>
			<tr>
				<th>작성자</th>
				<td>${idto.writer }</td>
			</tr>
			<tr>
				<th>내용</th>
				<td id="contents">${idto.contents }</td>
			</tr>
			</table>
			
			<table id="answerTable">
			<c:if test="${idto.answercheck eq 1 }">
				<c:set var="adto" value="${answerdto }"/>
				<p>답변</p>
				<img alt="" src="../source/svg/line.svg">
				<tr>
					<th>답변일</th>
					<td>${adto.answertime }</td>
				</tr>
				<tr>
					<th>답변내용</th>
					<td>${adto.answer }
				</tr>
			</c:if>
		</table>
	</div>	
</body>
</html>