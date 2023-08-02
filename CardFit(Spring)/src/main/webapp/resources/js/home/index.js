
		$('#goTestBtn').on('click',function(){
			window.location.href = "/member/searchCardTest"
			});
			
	
		var typingBool = false;
		var typingIdx = 0;

		function showcardMessageBox() {
		  $("#cardMessageBox").fadeIn(); 
		}

		var typingTxt = [];

		$(".typing-txt").each(function() {
		  typingTxt.push($(this).text().split("")); 
		});

		if (typingBool == false) {
		  typingBool = true;
		  var tyInt = setInterval(typing, 50); 
		}

		function typing() {
		  if (typingIdx < typingTxt.length) {
		    var currentTxt = typingTxt[typingIdx]; 

		    if (currentTxt.length > 0) {
		      $(".typing").append(currentTxt[0]); 
		      currentTxt.splice(0, 1); 
		    } else {
		      typingIdx++; 
		      $(".typing").append("<br>");
		    }
		  } else {
		    clearInterval(tyInt);
		    showcardMessageBox();
		  }
		}

		
		var index = 0;
		var bannerContents = document.querySelectorAll('.bannerContents');

		
		function changeImageAndComment() {
			bannerContents.forEach(function(content, i) {
				if (i === index) {
					content.style.display = 'block'; 
				} else {
					content.style.display = 'none'; 
				}
			});

			index = (index + 1) % bannerContents.length;
		}

		
		bannerContents.forEach(function(content, i) {
			if (i === 0) {
				content.style.display = 'block'; 
			} else {
				content.style.display = 'none'; 
			}
		});

		
		setInterval(changeImageAndComment, 3000);

		$(document).ready(function() {
			$("#goSearchMyCard").on('click', function(event) {
				var scrollTo = 3000;
				event.preventDefault();
				$('html, body').animate({
					scrollTop : scrollTo
				}, 300);
			});
		});
		
		 $('#totalRanking').on('click', function(event) {
			    event.preventDefault();

			    var cachedData = $('#changAjaxContainer').data('totalRankingCachedData');
			    if (cachedData) {
			      $('#changAjaxContainer').html(cachedData).show();
			    } else {
			      $.ajax({
			        url: '${pageContext.request.contextPath }/totalRanking',
			        type: 'GET',
			        dataType: 'html',
			        success: function(response) {
			          $('#changAjaxContainer').html(response).show();
			          $('#changAjaxContainer').data('totalRankingCachedData', response);
			        },
			        error: function(xhr, status, error) {
			          console.error(error);
			        }
			      });
			    }
			  });
		 
		 $('#companyRanking').on('click', function(event) {
			    event.preventDefault();

			    var cachedData = $('#changAjaxContainer').data('companyRankingCachedData');
			    if (cachedData) {
			      $('#changAjaxContainer').html(cachedData).show();
			    } else {
			      $.ajax({
			        url: '${pageContext.request.contextPath }/companyRanking',
			        type: 'GET',
			        dataType: 'html',
			        success: function(response) {
			          $('#changAjaxContainer').html(response).show();
			          $('#changAjaxContainer').data('companyRankingCachedData', response);
			        },
			        error: function(xhr, status, error) {
			          console.error(error);
			        }
			      });
			    }
			  });
		 
		 $('#rewordRanking').on('click', function(event) {
			    event.preventDefault();

			    var cachedData = $('#changAjaxContainer').data('rewordRankingCachedData');
			    if (cachedData) {
			      $('#changAjaxContainer').html(cachedData).show();
			    } else {
			      $.ajax({
			        url: '${pageContext.request.contextPath }/rewordRanking',
			        type: 'GET',
			        dataType: 'html',
			        success: function(response) {
			          $('#changAjaxContainer').html(response).show();
			          $('#changAjaxContainer').data('rewordRankingCachedData', response);
			        },
			        error: function(xhr, status, error) {
			          console.error(error);
			        }
			      });
			    }
			  });
		 
		 $('#feeRanking').on('click', function(event) {
			    event.preventDefault();

			    var cachedData = $('#changAjaxContainer').data('feeRankingCachedData');
			    if (cachedData) {
			      $('#changAjaxContainer').html(cachedData).show();
			    } else {
			      $.ajax({
			        url: '${pageContext.request.contextPath }/feeRanking',
			        type: 'GET',
			        dataType: 'html',
			        success: function(response) {
			          $('#changAjaxContainer').html(response).show();
			          $('#changAjaxContainer').data('feeRankingCachedData', response);
			        },
			        error: function(xhr, status, error) {
			          console.error(error);
			        }
			      });
			    }
			  });
		 
		 
 		   $(document).ready(function() {
		     var url = "${pageContext.request.contextPath }/totalRanking";
		     
		     $.ajax({
		       url: url,
		       type: 'GET',
		       success: function(response) {
		         $('#changAjaxContainer').html(response).show();
		       },
		       error: function(xhr, status, error) {
		         console.error(error);
		       }
		     });
		   });
 
		   
