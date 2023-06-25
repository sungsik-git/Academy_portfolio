<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="header_side/header_Notice.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="header_side/header_side.css">
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.pagecustomer{position: absolute; top: 35%; left: 30vw; width: 55vw;}
	.noti{font-size: 24px; font-weight: nomal; margin-left:10vw;}
	.titlelabel{border-top:1px solid #DDD; border-bottom: 1px solid #DDD; font-size:16px; display: flex;}
	.titlelabel p{width:40vw;}
	.titlelabel span{width:15vw; float:right; margin:15px; font-size: 14px; color: gray;}
	.btnscol1{width:100%; text-align: center; margin-top : 30px;}
	.btnLbtn_normal{color: white; text-decoration: none; }
	.buttonClass{width:8vw; height: 7vh; border: none; background-color: #B0C4DE; color: white;}
	.buttonClass:hover{background-color : #778899;}
</style>
</head>
<body>
<div class="pagecustomer">
	
		<input type="hidden" id="pageIdx" name="pageIdx" value="1" />
		<input type="hidden" id="srchNtcTlNm" name="srchNtcTlNm" value="" />
		<input type="hidden" id="srchLngCd" name="srchLngCd" value="" />
		<input type="hidden" id="srchBltnYn" name="srchBltnYn" value="" />
		
		<div class="noti_wrap hide_mo">
			<p class="noti">고속버스 홈페이지의 새로운 소식을 확인하세요.</p>
		</div>
		<div class="board_view">
			<div class="titlelabel">
				<p>🌟 프리미엄 고속버스 마일리지 소멸 유효기간 안내</p>
				<span style ="text-align: right">
					
					2019.11.22
				</span>
			</div>
			
			<div class="cont">
				<p>&nbsp;</p><p style="line-height: 150%;"><font face="맑은 고딕"><br>2017. 11. 25부터 시행된 프리미엄 고속버스 마일리지는 <br><b>적립일로부터 2년이 경과(2019. 11. 24부터)될 경우 이용한 해당 회사의 마일리지는 자동 소멸</b>됩니다.<br><br><br></font></p><div>- 마일리지 유효기간 확인방법 -<br>"<b>마이페이지 &gt; 프리미엄 마일리지 조회</b>" 메뉴에서 <b>마일리지 내역(적립/소멸)</b>을 확인</div><div>&nbsp;</div><div>&nbsp;<br><b></b></div><div><b><span style="color: rgb(0, 117, 200);">&nbsp;</span></b></div>
			</div>
		</div>
		<div class="btnscol1">
			<button class = "buttonClass" id = "mybuttondd" ><a href="Notice.jsp" class="btnLbtn_normal">목록</a></button>
		</div>
	
	
</div>
<script>
<%--버튼 아무데나 클릭하면 넘어감 --%>
const button = document.querySelector("#myButtondd");
button.addEventListener("click", function() {
  window.location.href = "Notice.jsp";
});
</script>
</body>
</html>