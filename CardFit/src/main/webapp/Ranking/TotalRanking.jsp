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
	width: 30%;
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
					<h2>신용카드 랭킹</h2>
			<c:forEach items="${creditRankingList }" var="list">
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
		
		<div class="checkContainer container">
				<h2>체크카드 랭킹</h2>
			<c:forEach items="${checkRankingList }" var="list">
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
		
		<div class="issContainer container">
					<h2>발급순 랭킹</h2>
			<c:forEach items="${issRankingList }" var="list">
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
<!-- 			<input type="button" value="더보기" id="loadMoreBtn">
 -->		
		<script type="text/javascript" src="../js/jquery.js"></script>
		<script type="text/javascript">
		var loadMoreBtn = document.getElementById("loadMoreBtn");
		var curPage = 0;

		$(document).ready(function() {
			$('body').on('click', '#loadMoreBtn', function(e) {
				e.preventDefault();
				var url = "TotalRanking.do?curPage=" + curPage;

				$.ajax({
					url : url,
					data : {
						"curPage" : curPage
					},
					type : 'GET',
					success : function(response) {
						$('body').html(response).show();
						curPage++;
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