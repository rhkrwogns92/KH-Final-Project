<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html lang="en">

<head>
   	<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrapcss/nomalize.css">
    <link rel="stylesheet" href="css/bootstrapcss/bootstrap.min.css">

    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="css/guestroom/guestRoomView.css">
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
        <div class="contTitle">
            <span class="name">ROOM</span>
            <p>
	            호텔 H.U.G만의 예술적 품격을 갖춘 객실에서
	            <br>
	            격이 다른 휴식과 여유를 경험해 보세요.
            </p>
        </div>
        <c:forEach var="list" items="${list }">
        <div class="innerBox">
            <div class="roomWrap">
                <div class="imageBox">
                    <img src="../../../img/${list.guestRoomImage1 }" alt="이미지입니다">
                </div>
                <div class="roomContent">
                    <p class="roomTitle">
                        <span>${list.guestRoomName }</span>
                        ${list.guestRoomContents1 }
                    </p>
                    <div class="roomInfo">
                        <p>
                            <span>면적</span>
                            ${list.guestRoomArea }m²
                        </p>
                        <p>
                            <span>인원</span>
                            성인 ${list.standardPersonnel }인 기준
                        </p>
                        <p>
                            <span>베드타입</span>
                            ${list.guestRoomBedType }
                        </p>
                        <p>
                            <span>전망</span>
                            ${list.guestRoomView }
                        </p>
                        <a class="buttonTypeSmall" href="/guestRoomDetailView?guestRoomName=${list.guestRoomName }&standardNo=${list.standardNo}"><span>상세 보기</span></a>
                    </div>
                </div>
            </div>
        </div>
       </c:forEach>
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
