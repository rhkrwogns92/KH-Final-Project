<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!doctype html>
<html lang="en">

<head>

   	<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <!-- <link rel="stylesheet" href="css/bootstrapcss/nomalize.css"> -->
    <link rel="stylesheet" href="css/bootstrapcss/bootstrap.min.css">

    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="css/guestroom/guestRoomAdminView.css">
    <!-- <script src="https://kit.font.awesome.com/096073a2a8.js" crossorigin="anonymous"></script> -->

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


    <link rel="shortcut icon" href="https://hotel.cloud/wp-content/uploads/2019/10/favicon.png">
    <title> H.U.G HOTEL 제주</title>
</head>

<body>
    <div class="wrap">
        <!--header-->
        <jsp:include page="../common/header.jsp"/>
        <!--header end-->
        <!--section start-->
    <section class="hotelHugWrap">
        <h1 class="buttonTitle">
            <p>객실 관리 및 추가/삭제</p>
        </h1>
        <a href="/guestRoomAddView">추가</a>
		<c:if test="${empty list}">
		<h3>테이블이 비어있어요 추가해주세요</h3>
		</c:if>
		<c:if test="${!empty list}">
		<c:forEach var="list" items="#{list }" begin="0" varStatus="status">
        <div class="innerBox">
            <div class="roomWrap">
                <div class="imageBox">
                    <img src="../../../img/${list.guestRoomImage1 }" alt="이미지입니다">
                </div>
                <div class="roomContent">
                    <p class="roomTitle">
                        <span>${list.guestRoomName }</span>
                        <!-- 모던하면서도 아늑한 인테리어의 스탠다드 룸 -->
                    </p>
                    <div class="roomInfo">
                        <p>
                            <span>서비스</span>
                            ${serviceCountList[status.index]}개
                        </p>
                        <p>
                            <span>어메니티</span>
                            ${amenityCountList[status.index]}개
                        </p>
                        <p>
                            <span>안내사항</span>
                            ${informationCountList[status.index]}개
                        </p>
                        <a href="/guestRoomAdminInfoView?guestRoomName=${list.guestRoomName }">객실 정보 추가하기</a>
                    </div>
                </div>
                <div class="roomPrice">
                    <p></p>
                    <span></span>
                    <a href="/guestRoomDelete?guestRoomName=${list.guestRoomName}">삭제</a>
                </div>
            </div>
        </div>    
        </c:forEach>
		</c:if>
    </section>
        <!--section end-->
        <!--footer start-->
        <jsp:include page="../common/footer.jsp"/>
        <!--footer end-->
    </div>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="js/bootstrapjs/bootstrap.min.js"></script>
<script src="js/header.js"></script>


</body>

</html>
