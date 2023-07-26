<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
</head>
<body>
	<c:import url="../inc/header/Header.jsp"></c:import>
	<c:set value="${randomWord}" var="word"/>
			<input type="hidden" id="questionWord" name="questionWord" value="${word.eng }">
			<input type="hidden" id="wordNum" value="${word.num}">
			${fn:substring(word.eng,0,1) }
			<c:forEach begin="1" end="${fn:length(word.eng)-1 }">
				_
			</c:forEach>
			 <br>
			${word.kor }
			정답 : <input type="text" name="answer" id="answer">
			<input type="button" value="정답확인" class="check-button">
			<div class="result" style="display: none;"></div>
	
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
   <script>
   
   /* $(".check-button").click(function(event) {
       var questionWord = $("#questionWord").val();
       var answer = $("#answer").val();

       if (questionWord == answer) {
           alert("정답입니다.");
           location.reload();
       } else {
           alert("오답입니다.");
       }
   }); */
   $(document).on("click", ".check-button", function(event) {
           var questionWord = $("#questionWord").val();
           var answer = $("#answer").val();
           
           if (questionWord == answer) {
               $.ajax({
                   type: "post",
                   url: "/updateClear",
                   data: { "wordNum": $("#wordNum").val() },
                   success: function(result) {
                       alert("정답입니다.");
                       location.reload();
                   }
               });
           } else {
               $.ajax({
                   type: "post",
                   url: "/updateWrong",
                   data: { "wordNum": $("#wordNum").val() },
                   success: function(result) {
                       alert("오답입니다.");
                   }
               });
           }
       });
  </script> 
</body>
</html>