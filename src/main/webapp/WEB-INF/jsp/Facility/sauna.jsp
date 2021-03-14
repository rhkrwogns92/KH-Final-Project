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
<link rel="stylesheet" href="css/Facility/sauna.css">

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
                    SAUNA
                </h2>
                <p class="titleSmall">
                    편안한 휴식을 즐길 수 있는 실내 사우나
                </p>
                고객의 동선을 고려한 여유로운 공간으로 디자인된 실내사우나는 <br> 자쿠지탕, 건/습식 사우나 등 다양한 시설과 세심한 서비스로 편안한 만족감을 드립니다.
            </div>
            <div class="imageArea">
                <ul class="slides">
                    <li>
                        <img src="img/hah_img/facility/sauna01.jpg" alt=" "></li>
                    <li><img src="img/hah_img/facility/sauna02.jpg " alt=" "></li>
                    <li><img src="img/hah_img/facility/sauna03.jpg " alt=" "></li>
                    <li><img src="img/hah_img/facility/sauna04.jpg " alt=" "></li>
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
                            <dd>H.U.G 호텔 제주 1층</dd>
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
                - 기간 : 2월 15일 ~ 추후 공지 시까지 <br> - 운영시간 : 06:00 ~ 21:00 <br> - 내용 : 탕 및 샤워시설에 한하여 이용 가능 (건/습식 사우나는 이용 제한)

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
                        * 48개월 이하 어린이에 한하여 혼성입장이 가능합니다.
                    </li>
                    <li>
                        * 눈병, 피부병, 기타 공중위생에 영향을 미치는 고객은 수영장 입장에 제한될 수 있습니다.
                    </li>
                    <li>
                        * 욕탕에 들어갈 때에는 안전 바를 잡고 계단을 이용해 주십시오.
                    </li>
                    <li>
                        * 음주 혹은 약물을 복용한 상태에서 이용을 금지합니다.
                    </li>
                    <li>
                        * 안전을 위하여 사우나 내에서는 유리 등 깨지기 쉬운 물건의 이용을 삼가 주시기 바랍니다.
                    </li>
                    <li>
                        * 장시간 이용 시 메스꺼움, 현기증, 실신을 유발할 수 있습니다.
                    </li>
                    <li>
                        * 바닥이 젖어 있으면 미끄러질 위험이 있습니다.
                    </li>
                    <li>
                        * 호텔은 사우나에서 발생하는 사고나 상해에 대하여 책임지지 않습니다.
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
