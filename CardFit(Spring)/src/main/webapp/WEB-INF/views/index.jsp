<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>카드핏</title>
 <link rel="shorcut icon" type="image/x-icon" href="./resources/svg/CF_logo_Symbol.svg">
 
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
	<!-- 부트스트랩 -->
<link href="${pageContext.request.contextPath }/resources/css/basic.css" type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/css/home/index.css" type="text/css" rel="stylesheet">


</head>
<body>
	 <c:import url="${pageContext.request.contextPath }/../resources/header/header.jsp" />
	<div id="bannerContainer">
		<div class="bannerContents" id="bannerContents1">
			<img src="resources/svg/banner1.svg" alt="">
			<div id="bannerComent1" class="bannerComent">
				<img alt="" src="./resources/svg/mark.svg">
				<p>나만의 자산운용 비서</p>
				<p>카드핏!</p>
				<p>나에게 딱 맞는 카드 사용 설계,</p>
				<p>생활 패턴에 맞춰진 최적의 금전 사용 파트너</p>
			</div>
		</div>
		<div class="bannerContents" id="bannerContents2">
			<img src="resources/svg/banner2.svg" alt="">
			<div id="bannerComent2" class="bannerComent">
				<p>당신의 카드찾기 서비스 카드핏</p>
				<p>나에게 딱 맞는 카드 찾기</p>
				<div id="goSearchMyCard">추천받기</div>
			</div>
		</div>
	</div>
	<div id="aboutContainer">
		<p>나의 소비습관에 딱 맞는 카드로 최고의 금전 사용 시나리오를 만들어보세요</p>
		<div id="aboutContents">
			<div id="aboutImg1" class="aboutImgs" style="float: left">
				<img alt="" src="./resources/svg/intro1.svg">
			</div>
			<div class="aboutContexts" style="float: right">
				<p id="aboutContext1">
					당신이 사용하는 카드는<br> 당신의 생활패턴에<br> 맞추어져 있나요?
				</p>
			</div>
			<div id="aboutImg2" class="aboutImgs" style="float: right">
				<img alt="" src="./resources/svg/intro2.svg">
			</div>
			<div class="aboutContexts" style="float: left">
				<p id="aboutContext2">
					이왕 쓰는 돈이라면 가장 합리적으로!<br> 당신에게 가장 맞는 카드로 <br> 숨은 포인트 까지
					챙겨드릴게요
				</p>
			</div>
		</div>


		<div id="adventageContainer">
			<div id="adventage1" class="adventage">
				<img alt="" src="./resources/svg/adventage1.svg">
				<p>나에게 필요한 혜택들만 최대한으로</p>
				<p>고르고 골라서 최고의 효율을 낼 수 있는 카드를 GET!!</p>
			</div>
			<div id="adventage2" class="adventage">
				<img alt="" src="./resources/svg/adventage2.svg">
				<p>카드가 필요해?</p>
				<p>카드핏에서 딱 맞춰주는데 아무거나 쓸거야?</p>
			</div>
			<div id="adventage3" class="adventage">
				<img alt="" src="./resources/svg/adventage3.svg">
				<p>맞춤카드라고 골랐더니 검색결과 이렇게 많아?</p>
				<p>타이트하게 딱 맞춘 카드들로!</p>
			</div>
		</div>
	</div>


	<div id="searchMyCardContainer">
		<div class="introduceBox">
			<div id="typingContainer">
				<div class="typing-txt">안녕하세요? 나를 위한 맞춤형 자산 사용 설계 서비스 카드핏 입니다.</div>
				<div class="typing-txt"><br></div>
				<div class="typing-txt">당신에게 맞춤형 카드를 추천해드리기위해 당신에 대해 알고 싶어요!</div>
				<div class="typing-txt">당신에게 가상의 상황을 드릴게요 :)</div> 
			</div>
			<p class="typing"></p>
		</div>
		<div id="cardMessageBox">
			<img alt="" src="./resources/svg/profile.svg">
			<p>카드핏 메시지</p>
			<p>새로운 메시지가 있습니다.</p>
			<div id="messageBtn">
				<input type="button" id="goTestBtn" value="메시지 보기">
			</div>
		</div>
	</div>


	<div id="cardRankingContainer">
		<div id="rankingTitleBox">
			<h1>카드랭킹</h1>
			<p>카드 실시간 인기순위</p>
		</div>
		<div id="tabBtnContainer">
			<input type="radio" id="totalRanking" checked="checked">
			<label for="totalRanking">통합</label>
			<input type="radio" id="companyRanking">
			<label for="companyRanking">카드사별</label>
			<input type="radio" id="rewordRanking">
			<label for="rewordRanking">혜택별</label>
			<input type="radio" id="feeRanking">
			<label for="feeRanking">실적/회비별</label>
		</div>
		<div id="changAjaxContainer">
		</div>
	</div>
	<footer>
		<div id="leftContainer">
			<p>상담사 고객님의 로그인은 아래 버튼을 클릭하세요</p>
			<a href="ManagerLogin.do">상담원/관리자 전용</a>
		</div>
		<div id="rightContainer">
			<p>서울 강남구 강남대로78길 8 한국빌딩 4F, 8F &nbsp&nbsp&nbsp 제작자 : 김성식 &nbsp&nbsp&nbsp 문의 : kss950708@naver.com </p>
		</div>
	</footer>

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/home/index.js"></script>
</body>
</html>