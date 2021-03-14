<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="member"/>
</sec:authorize>
<!doctype html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="/css/bootstrapcss/nomalize.css">

<!-- <link rel="stylesheet" href="/css/bootstrapcss/bootstrap.min.css"> -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">

<link rel="stylesheet" href="/css/styles.css">

<link rel="shortcut icon"
	href="https://hotel.cloud/wp-content/uploads/2019/10/favicon.png">

<!--글씨체 링크 한글-->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">

<!--글씨체 링크 영어-->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Playfair+Display&display=swap"
	rel="stylesheet">


<title>H.U.G HOTEL 제주</title>
</head>

<body>
	<div class="wrap">
		<!--header-->
		<jsp:include page="../common/header.jsp" />
		<!--header end-->

		<jsp:include page="modal.jsp" />
		
		<!--section start-->
		<section>
			
			<div style="margin: 50px 0px 50px 0px">
				<div class="container" style="width: 400px; text-align: center;">

					<h1 style="font-weight: 900; margin-bottom: 30px">Google 계정  등록</h1>
					<h3 style="font-weight: 900; margin-bottom: 50px">등록을 완료해주세요.</h3>
					
					<form class="form-horizontal" action="/join" method="post">
					
						<div class="form-group">
							<label for="inputEmail" class="col-xs-4 control-label">이메일</label>
							<div class="col-xs-8">
								<input type="email" class="form-control" name="email"
									id="inputEmail" value="${email}" disabled>
							</div>
						</div>
						
						<input type="hidden" name="memberId" value="testID">
							
						<div class="form-group">
							<label for="inputNick" class="col-xs-4 control-label">닉네임</label>
							<div class="col-xs-8">
								<input type="text" class="form-control" name="memberNick"
									id="inputNickname" placeholder="Nickname" required>
								<div class="check_font" id="nickCheck"></div>
							</div>
						</div>

						<br>

						<div class="form-group" style="margin-bottom: 10px;">
							<div class="checkbox">
								<label class="checkbox-inline col-xs-5"> <input
									type="checkbox" id="chk-terms1" value="chk" required>
									(필수) 동의합니다.
								</label>
							</div>
						</div>

						<div class="panel panel-warning" style="margin-bottom: 10px; border-color: #72a5d3;">
							<div class="panel-heading" style="background-color: #bedae8; border-color: #72a5d3">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion"
										href="#terms1"> 이용약관 (자세히 보기) </a>
								</h4>
							</div>
							<div id="terms1" class="panel-collapse collapse">
								<div class="panel-body" style="text-align: left;">Lorem
									ipsum dolor sit amet, consectetur adipiscing elit. Nunc
									suscipit velit sit amet tristique tincidunt. Fusce dapibus
									tortor ut est ornare porttitor. Aliquam auctor bibendum
									posuere. Fusce laoreet tincidunt lacinia. Aliquam posuere
									pharetra auctor. Pellentesque et eleifend nibh, a bibendum
									lacus. Pellentesque sit amet dignissim mauris. Suspendisse a
									erat congue nunc auctor malesuada. Mauris ultricies magna quis
									neque egestas, eu vehicula sapien luctus. Aenean id condimentum
									mauris. Integer urna enim, vehicula non nunc non, feugiat
									imperdiet eros. Morbi vitae est at erat tristique facilisis.
									Mauris pulvinar vel arcu vel ultrices. Mauris a nisi sit amet
									urna elementum semper. Etiam dignissim pharetra mauris. Donec
									rhoncus nisl sem, ut ultrices odio porttitor sed. Donec
									consequat facilisis velit. Cras feugiat tincidunt fermentum.
									Duis interdum nec quam id eleifend.</div>
							</div>
						</div>

						<div class="form-group" style="margin-bottom: 10px;">
							<div class="checkbox">
								<label class="checkbox-inline col-xs-5"> <input
									type="checkbox" name="memberAgree" id="chk-terms2" value="chk">
									(선택) 동의합니다.
								</label>
							</div>
						</div>

						<div class="panel panel-warning" style="border-color: #72a5d3;">
							<div class="panel-heading" style="background-color: #bedae8; border-color: #72a5d3">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion"
										href="#terms2"> 마케팅 수신 동의 (자세히 보기) </a>
								</h4>
							</div>
							<div id="terms2" class="panel-collapse collapse">
								<div class="panel-body" style="text-align: left;">Lorem
									ipsum dolor sit amet, consectetur adipiscing elit. Nunc
									suscipit velit sit amet tristique tincidunt. Fusce dapibus
									tortor ut est ornare porttitor. Aliquam auctor bibendum
									posuere. Fusce laoreet tincidunt lacinia. Aliquam posuere
									pharetra auctor. Pellentesque et eleifend nibh, a bibendum
									lacus. Pellentesque sit amet dignissim mauris. Suspendisse a
									erat congue nunc auctor malesuada. Mauris ultricies magna quis
									neque egestas, eu vehicula sapien luctus. Aenean id condimentum
									mauris. Integer urna enim, vehicula non nunc non, feugiat
									imperdiet eros. Morbi vitae est at erat tristique facilisis.
									Mauris pulvinar vel arcu vel ultrices. Mauris a nisi sit amet
									urna elementum semper. Etiam dignissim pharetra mauris. Donec
									rhoncus nisl sem, ut ultrices odio porttitor sed. Donec
									consequat facilisis velit. Cras feugiat tincidunt fermentum.
									Duis interdum nec quam id eleifend.</div>
							</div>
						</div>

						<br>

						<div class="col-xs-12">
							<div class="form-group">
								<button type="submit" class="btn btn-primary btn-lg btn-block" id="submitBtn" 
									style="font-weight: bold;">확 인</button>
							</div>
							<input type="hidden" name="memberEmail" value="${email}">
							<input type="hidden" name="memberKey" value="${key}">
						</div>

					</form>

				</div>
			</div>

		</section>
		<!--section end-->

		<!--footer start-->
		<jsp:include page="../common/footer.jsp" />
		<!--footer end-->
	</div>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.5.1.js"
		integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script src="/js/bootstrapjs/bootstrap.min.js"></script>
	<script src="/js/header.js"></script>
	<script src="/js/index.js"></script>

	<!-- 	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script> -->

	<script>

		$('#inputNickname').blur(function() {
			var nick = $('#inputNickname').val();
			$('#submitBtn').attr('disabled', false);
			$.ajax({
				url : '${pageContext.request.contextPath}/join/nickCheck?nick=' + nick,
				type : 'get',
				success : function(data) {
					if (nick == '') {
						$('#nickCheck').text('');
					} else if (data) {
						$('#nickCheck').text('사용중인 닉네임입니다.');
						$('#nickCheck').css('color', 'red');
						$('#submitBtn').attr('disabled', true);
					} else {
						$('#nickCheck').text('사용가능한 닉네임입니다.');
						$('#nickCheck').css('color', 'blue');
						isNick = true;
					}	
				}
			});
		});
		
		$.fn.multiline = function(text) {
		    this.text(text);
		    this.html(this.html().replace(/\n/g,'<br/>'));
		    return this;
		}
		
		$('.modal-title').text('Google 계정 회원가입');
		$('.modal-body').multiline('Google 계정이  등록되지 않았습니다. \n 추가정보를 입력하고 등록을 완료해주십시오.');
		
		
		$(function() {
			$('#modal').modal({
				backdrop: 'static',
				keyboard: false
			});
		})
		
	</script>

</body>

</html>
