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
<link rel="stylesheet" href="css/bootstrapcss/nomalize.css">
<link rel="stylesheet" href="css/bootstrapcss/bootstrap.min.css">


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

<link rel="stylesheet" href="css/styles.css">
<link rel="stylesheet" href="css/Facility/pitness.css">

<link rel="stylesheet"
	href="https://unpkg.com/swiper/swiper-bundle.min.css" />
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

<link rel="shortcut icon"
	href="https://hotel.cloud/wp-content/uploads/2019/10/favicon.png">
<title>H.U.G HOTEL 제주</title>
</head>

<body>
	<div class="wrap">
		<!--header-->
		<jsp:include page="../common/header.jsp" />
		<!--header end-->
		<!--section start-->
		<section class="hotelHugDetailWrap">
            <div class="contDetailTitle">
                <h2 class="titleBig">
                    PITNESS
                </h2>
                <p class="titleSmall">
                    건강한 하루를 호텔에서도 유지할 수 있게 도와주는 피트니스클럽
                </p>
                쾌적한 환경과 15가지의 최신 장비로 구성된 피트니스 센터는 <br> 단순한 체력관리뿐만 아니라 일상의 밸런스를 디자인 할 수 있도록 운영하고 있습니다.
            </div>
            <div class="imageArea">
                <ul class="slides">
                    <li>
                        <img src="img/hah_img/facility/pitness04.jpg" alt=" "></li>
                    <li><img src="img/hah_img/facility/pitness01.jpg " alt=" "></li>
                    <li><img src="img/hah_img/facility/pitness02.jpg " alt=" "></li>
                    <li><img src="img/hah_img/facility/pitness03.jpg " alt=" "></li>
                </ul>
            </div>
            <p class="controls ">
                <a class="prev "> &#10094;</a>
                <span class="dot on "></span>
                <span class="dot "></span>
                <span class="dot "></span>
                <span class="dot "></span>
                <a class="next ">&#10095;</a>
            </p>
            <div class="detailInfo">
                <ul>
                    <li>
                        <dl>
                            <dt>위치</dt>
                            <dd>H.U.G 호텔 제주 지하 1층</dd>
                        </dl>
                    </li>
                    <li>
                        <dl>
                            <dt>운영시간</dt>
                            <dd>06:00 ~ 22:00 </dd>
                        </dl>
                    </li>
                    <li>
                        <dl>
                            <dt>문의</dt>
                            <dd>064-123-4567</dd>
                        </dl>
                    </li>
                </ul>
            </div>
            <p class="guidetitle">
                * 코로나 19 예방 조치에 따른 운영 변경 안내
            </p>
            <p class="guidedetail">
                - 기간 : 2월 15일 ~ 추후 공지 시까지 <br> - 운영시간 : 06:00 ~ 21:00 <br> - 피트니스 이용 시 락커(샤워시설) 이용이 제한됩니다.

            </p>
            <p class="guidetitle">
                - 본 일정은 상황에 따라 변동될 수 있습니다.
            </p>
            <div class="guideBox ">
                <h2 class="guideList1 ">
                    이용규정
                </h2>
                <ul class="guideList2 ">
                    <li>
                        * 피트니스 입장은 영업 종료시간 30분전까지 입니다.
                    </li>
                    <li>
                        * 체련장은 17세 이상 이용 가능합니다.
                    </li>
                    <li>
                        * 음식물 및 주류 반입은 허용되지 않으며 음주 상태에서는 입장하실 수 없습니다.
                    </li>
                    <li>
                        * 체련장 이용 시 운동복과 운동화를 착용하셔야 합니다.
                    </li>
                    <li>
                        * 운동 기구를 사용한 후에는 원위치에 놓아 주시기 바랍니다.
                    </li>
                    <li>
                        * 귀중품은 리셉션 데스크에 보관하시고, 보관하지 않은 물품의 분실은 책임지지 않습니다.
                    </li>
                    <li>
                        * 호텔은 체련장 이용 시 발생하는 사고나 상해에 대하여 책임지지 않습니다.
                    </li>
                </ul>
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
	<script src="js/bootstrap.min.js"></script>
	<script src="js/header.js"></script>
	<script src="js/Facility/facility.js"></script>
</body>



</html>
