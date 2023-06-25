<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<style type="text/css">
body{
}
.container{
	position: relative;
	width: 23%;
	margin-left:20px;
	float: left;
}
.container h2{
	padding: 4px;
	margin-top: 4px;
}
.rankingElement{
	width: 100%;
	height: 120px;
	background-color: #F4F4F4;
	margin-bottom: 5px;
}
.imgBox{
	position: relative;
	width: 50%;
	float: left;
  	display: flex; /* Flexbox 사용 */
	align-items: center; /* 수직 정렬 */
	justify-content: center; /* 수평 정렬 */
}
.imgBox img{
	position: relative;
	max-width:150px;
	max-height: 120px;
	margin: auto;
}
.contentsBox{
	position: relative;
	width: 50%;
	float: right;
}
.contentsBox p{
	margin: 0;
}


#loadMoreBtn{
	width:60%;
	margin: 0 auto;
	
}
</style>
</head>
<body>
	<div class="creditContainer container">
		<h2>편의점 혜택 랭킹</h2>
		<c:forEach items="${storeList }" var="list">
			<div class="rankingElement">
				<div class="imgBox">
					<img alt="" src="./CardIMG/${list.img }">
				</div>
				<div class="contentsBox">
					<p>${list.name }</p>
					<p>${list.company }</p>
					<p>${list.cardDivision }</p>
				</div>
			</div>
		</c:forEach>
	</div>
		<div class="creditContainer container">
		<h2>쇼핑 혜택 랭킹</h2>
		<c:forEach items="${shoppingList }" var="list">
			<div class="rankingElement">
				<div class="imgBox">
					<img alt="" src="./CardIMG/${list.img }">
				</div>
				<div class="contentsBox">
					<p>${list.name }</p>
					<p>${list.company }</p>
					<p>${list.cardDivision }</p>
				</div>
			</div>
		</c:forEach>
	</div>
		<div class="creditContainer container">
		<h2>주유 혜택 랭킹</h2>
		<c:forEach items="${carList }" var="list">
			<div class="rankingElement">
				<div class="imgBox">
					<img alt="" src="./CardIMG/${list.img }">
				</div>
				<div class="contentsBox">
					<p>${list.name }</p>
					<p>${list.company }</p>
					<p>${list.cardDivision }</p>
				</div>
			</div>
		</c:forEach>
	</div>
		<div class="creditContainer container">
		<h2>항공 혜택 랭킹</h2>
		<c:forEach items="${airList }" var="list">
			<div class="rankingElement">
				<div class="imgBox">
					<img alt="" src="./CardIMG/${list.img }">
				</div>
				<div class="contentsBox">
					<p>${list.name }</p>
					<p>${list.company }</p>
					<p>${list.cardDivision }</p>
				</div>
			</div>
		</c:forEach>
	</div>
</body>
</html>