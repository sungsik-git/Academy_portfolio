<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="./element/Default/Default.css" type="text/css" rel="stylesheet">
<style type="text/css">
body{
	position : relative;
	width: 1920px;
	height: 100vh;
}
h3{
	font-size:28px;
}
.title{
	font-size:20px;
}
#mainContainer{
	position: relative;
	width: 40%;
	height: 30vh;
	margin: 0 auto;
	top: 25vh;
	
}
#identifyEmail{
	width: 100%;
	margin-top: 20px;
}
#identifyEmailTitle{
	position: relative;
	margin-bottom: 20px;
	
}
#identifyEmail img{
	width:100%;
}
input[type=email]{
	width:80%;
	padding: 8px;
	margin-bottom: 30px;
	font-size: 16px;
}

#checkTitle{
	margin-top: 30px;
}
#checkEmailBtn{
	width:16%;
	padding: 10px;
	background: none;
	border: 1px solid #49484B;
	color: #49484B;
}
#checkEmailBtn:hover{
	background-color: #0042EC;
	border: 1px solid #49484B;
	color: white;
}
.btn1{
	position: relative;
	width: 100%;
	height: 6vh;
	border-radius: 4px;
	background-color: #0042ec;
	margin-top: 5vh;
	text-align: center;
	line-height: 40px;
}
.btn1 > a{
	font-size: 22px;
	color: white;
	text-decoration: none;
}
input[type=checkbox]{
	padding: 8px;
	margin: 10px 0;
}
</style>
<title>회원가입</title>
 <link rel="shorcut icon" type="image/x-icon" href="./source/svg/CF_logo_Symbol.svg">
</head>
<body>
	<c:import url="./element/Header/Header.jsp"/>
	<div id="mainContainer">
		<h3>회원가입</h3>
		<div id="identifyEmail">
			<p id="identifyEmailTitle" class="title">본인인증</p>
	        <form action="registerEmail.do" method="post" id="identifyEmailForm">
	            <input type="email" id="registerEmail" name="registerEmail" placeholder="이메일">
	            <input type="submit" id="checkEmailBtn" value="이메일 인증">
	            <div id="emailCheckMsg"></div>
	        </form>
	            <img src="./source/svg/line.svg"/>
	            <p class="title" id="checkTitle">이용약관 동의</p>	                    
	            <input type="checkbox" id="checkAll"><label for="checkAll">전체동의하기</label><br>
	            <input type="checkbox" id="box1" >[필수]카드핏 약관 동의<br>
	            <input type="checkbox" id="box2" >[필수]개인정보 수집 및 이용 동의
	        
	        	<div class="btn1"><a href="#" class="btn">다음</a></div>
	    </div>
    </div>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="./js/PostAPI.js" type="text/javascript"></script>
    <script type="text/javascript" src="./js/jquery.js"></script>
    <script>
    $(document).ready(function() {
    	  $("#checkAll").on("change", function() {
    	    var isChecked = $(this).prop("checked");
    	    $("#box1, #box2").prop("checked", isChecked);
    	  });

    	  $("#box1, #box2").on("change", function() {
    	    var box1Checked = $("#box1").prop("checked");
    	    var box2Checked = $("#box2").prop("checked");
    	    var allChecked = box1Checked && box2Checked;
    	    $("#checkAll").prop("checked", allChecked);
    	  });

    	  $(".btn").on("click", function(e) {
    	    var box1Checked = $("#box1").prop("checked");
    	    var box2Checked = $("#box2").prop("checked");

    	    if (!box1Checked || !box2Checked) {
    	      e.preventDefault(); // 기본 동작 방지
    	      alert("이메일 인증 및 필수 체크 항목을 확인해주세요. 다음 단계로 이동하려면 이메일을 인증하고 필수 체크 항목을 체크해야합니다.");
    	    } else {
    	      $(this).attr("href", "MemberRegister.do");
    	    }
    	  });
    	});

    
	$(document).ready(function() {
    $("#checkEmailBtn").on("click", function(event) {
        event.preventDefault(); 
        
        var registerEmail = $("#registerEmail").val();
    
        $.ajax({
            url: "registerEmail.do",
            type: "POST",
            data: { "registerEmail": registerEmail },
            dataType: "text",
            success: function(result) {
                if (result == 0) {
                    var newForm = $("<form>").attr("method", "post");
                    var input1 = $("<input>").attr("type", "text").attr("name", "userNumber").attr("id", "userNumber").attr("placeholder", "인증번호 6자리 입력")
                    .css({"padding":"6px","font-size":"16px"});
                    var submitButton = $("<input>").attr("type", "submit").attr("value", "인증번호 확인").attr("id", "emailIdentiBtn")
                    .css({"padding":"8px", "background":"none", "border":"solid 2px #0042EC", "margin-left":"4px"});
                    var newDiv = $('<div>').attr("id","emailCheckMsg")
                    newForm.append(input1);
                    newForm.append(submitButton);
                    $("#identifyEmailForm").append(newForm);

                    $("#emailIdentiBtn").on("click", function(event) {
                        event.preventDefault(); 

                        var userNumber = $('#userNumber').val();
                        $.ajax({
                            url: "checkEmail.do",
                            type: "POST",
                            data: { "userNumber": userNumber },
                            dataType: "text",
                            success: function(result) {
                                if (result === "0") {
                                    $("#identifyEmailForm").html("<p>인증완료</p>").css("color","red");
                                } else if(result ==="1"){
                                    $('#emailCheckMsg').html("인증번호를 다시 확인해주세요").css("color","red");
                                }
                            },
                        });
                    });
                } else {
                    console.log("error");
                }
            },
            error: function() {
                alert("서버 요청 실패");
            }
        });

    });
});
</script>
</body>
</html>