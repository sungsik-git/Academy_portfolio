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
		<form action="/checkAanswer">
			<input type="hidden" id="questionWord" name="questionWord" value="${word.eng }">
			${fn:substring(word.eng,0,1) }
			<c:forEach begin="1" end="${fn:length(word.eng)-1 }">
				_
			</c:forEach>
			 <br>
			${word.kor }
			정답 : <input type="text" name="answer" class="answer-input">
			<input type="submit" value="정답확인" class="check-button">
			<input type="hidden" name="numOfWord" value="${word.num }">
		</form>
			<div class="result" style="display: none;"></div>
	
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script>
		var qWord = document.querySelector("#questionWord").val();
		console.log(qWord);
			/* $(".check-button").on("click", function() {
				var word =
				var answer = document.querySelector(".answer-input").val();
				console.log(answer);
				$.ajax({
					url: "checkAnswer",
					method: "POST",
					data: {
						index: index,
						answer: answer
					},
					success: function(response) {
						var resultDiv = wordContainer.find(".result");
						if (response.correct) {
							resultDiv.text("정답입니다!").css("color", "green");
						} else {
							resultDiv.text("오답입니다!").css("color", "red");
						}
						resultDiv.show();
					},
					error: function() {
						alert("오류가 발생했습니다.");
					}
				});
			});
		}); */
	</script>
</body>
</html>