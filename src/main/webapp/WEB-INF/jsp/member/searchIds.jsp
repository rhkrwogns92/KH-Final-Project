<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
			
			<div style="margin: 100px 0px 0px 0px">
				<div class="container" style="width: 400px; text-align: center;">

					<h1 style="font-weight: 900; margin-bottom: 50px">아이디 찾기</h1>

					<form class="form-horizontal">

						<div class="form-group">
							<label for="inputName" class="col-xs-4 control-label">이름</label>
							<div class="col-xs-8">
								<input type="text" class="form-control"
									name="memberName" id="inputName" placeholder="Name" required>
							</div>
						</div>

						<div class="form-group" style="margin-bottom: 25px">
							<label for="inputPhone" class="col-xs-4 control-label">전화번호</label>
							<div class="col-xs-8">
								<input type="text" class="form-control" maxlength="13"
									name="memberPhone" id="inputPhone" placeholder="PhoneNumber" required>
							</div>
						</div>
						
					</form>

					<div id="search"></div>

					<div class="form-group">
						<button class="btn btn-primary btn-lg btn-block"
							id="searchBtn" style="font-weight: bold">
							아이디 찾기
						</button>
					</div>
					
					<form id="loginId" action="/login" method="post">
						<input type="hidden" class="form-control" name="memberEmail" id="sInputId">
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
		$(function() {
			$('#terms1').collapse({
				toggle : false
			})
		});
		$(function() {
			$('#terms2').collapse({
				toggle : false
			})
		});
		var autoHypenPhone = function(str) {
			str = str.replace(/[^0-9]/g, '');
			var tmp = '';
			if (str.length < 4) {
				return str;
			} else if (str.length < 7) {
				tmp += str.substr(0, 3);
				tmp += '-';
				tmp += str.substr(3);
				return tmp;
			} else if (str.length < 11) {
				tmp += str.substr(0, 3);
				tmp += '-';
				tmp += str.substr(3, 3);
				tmp += '-';
				tmp += str.substr(6);
				return tmp;
			} else {
				tmp += str.substr(0, 3);
				tmp += '-';
				tmp += str.substr(3, 4);
				tmp += '-';
				tmp += str.substr(7);
				return tmp;
			}
			return str;
		}
		
		$('#inputPhone')[0].onkeyup = function() {
			this.value = autoHypenPhone(this.value);
		}

		var name;
		var phone;
		var objDiv;
		
		$('#searchBtn').click(function() {
			name = $('#inputName').val();
			phone = $('#inputPhone').val();
			objDiv = $('<div>');
			objDiv.append($('<div>')
				.addClass('col-xs-1 glyphicon glyphicon-user')
				.attr('aria-hidden', 'true')
				.css('line-height', '220%')
				);
			objDiv.append($('<div>')
				.attr('id', 'sId')
				.addClass('col-xs-9')
				.css('text-align', 'left')
				.css('line-height', '220%')
				);
			objDiv.append($('<button>')
				.attr('id', 'sBtnId')
				.attr('type', 'submit')
				.attr('form', 'loginId')
				.addClass('col-xs-2 btn btn-info')
				.css('margin-bottom', '15px')
				.text('로그인')
			);
			$.ajax({
				url : '${pageContext.request.contextPath}/searchIds/searchIds?name=' + name + '&phone=' + phone,
				type : 'get',
				success : function(data) {
					if(data.length > 0) {
						$('#search').text('');
						$.each(data, function (index, value) {
							$('#search').append(objDiv.clone()
								.attr('id', 'id-'+index));
							$('#id-'+index+' #sId')
								.text(value.memberEmail + '(가입일:' + value.memberRegDate + ')');
							$('#id-'+index+' #sBtnId')
								.attr('id', 'sBtnId-'+index)
								.click(function() {
									$('#sInputId').val(value.memberEmail);
								});
						});
					} else {
						$('.modal-title').text('아이디 찾기');
						$('.modal-body').multiline('입력하신 정보와 일치하는 아이디가 없습니다. \n 다시 입력해주세요.');
						$.fn.showModal();
					}
				}
			})
		})
		
		$.fn.showModal = function() {
			$('#modal').modal({
				backdrop: 'static',
				keyboard: false
			});
		}
		
		$.fn.multiline = function(text) {
		    this.text(text);
		    this.html(this.html().replace(/\n/g,'<br/>'));
		    return this;
		}
		
	</script>

</body>

</html>
