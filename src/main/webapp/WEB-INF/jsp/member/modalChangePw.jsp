<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="member"/>
</sec:authorize>
<sec:authorize access="hasRole('ROLE_GENERAL')">
</sec:authorize>
<sec:authorize access="hasRole('ROLE_ADMIN')">
</sec:authorize>
<sec:authorize access="isAnonymous()">
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

	<!-- Modal -->
	<div class="modal fade" id="modal" tabindex="-1" role="dialog" 
	   aria-labelledby="modalLabel" aria-hidden="true" style="margin-top: 200px; text-align: center; font-size: 150%;">
	   <div class="modal-dialog">
	      <div class="modal-content">
	         <div class="modal-header">
	            <button type="button" class="close" data-dismiss="modal" 
	               aria-hidden="true">×
	            </button>
	            <h4 class="modal-title" id="modalLabel">
	              	 비밀번호 변경
	            </h4>
	         </div>
	         <div class="modal-body">
	            	${member.nick}님의 개인정보를 안전하게 보호하고, <br>
	            	개인정보 도용으로 인한 피해를 예방하기 위해 <br>
	            	90일 이상 비밀번호를 변경하지 않은 경우 <br>
	            	비밀번호 변경을 권장해드립니다.<br>
	         </div>
	         <div class="modal-footer" style="text-align: center;">
	            <button type="button" class="btn btn-default" data-dismiss="modal" style="margin-right: 15px" onclick="location.href='/myPage'">
	            	비밀번호 변경하기
	            </button>
	            <button type="button" class="btn btn-default" data-dismiss="modal" style="margin-left: 15px" onclick="location.href='/changePwLater'" >
	            	1개월 후에 변경하기
	            </button>
	         </div>
	      </div>
	   </div>
	</div>
	<!-- Modal -->


	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.5.1.js"
		integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script src="/js/bootstrapjs/bootstrap.min.js"></script>

	<script>
		$('#modal').modal({backdrop: 'static', keyboard: false});
	</script>

</body>

</html>
