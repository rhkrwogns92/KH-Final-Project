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
<link rel="stylesheet" href="css/Dining/restaurant1.css">

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
                    THE BUFFET
                </h2>
                <!-- <p class="titleSmall">
                    고급스러운 색체와 감각적인 분위기를 지닌 풀빌라의 정석, 로얄 풀빌라
                </p> -->
                창 밖으로 펼쳐지는 오름정원의 아름다운 전망과 함께 <br> H.U.G 호텔의 품격을 담은 130여 가지의 다양한 메뉴를 제공하는 뷔페 레스토랑
            </div>
            <div class="imageArea">
                <ul class="slides">
                    <li>
                        <img src="img/hah_img/dining/더뷔페01.jpg" alt=" "></li>
                    <li><img src="img/hah_img/dining/더뷔페02.jpg " alt=" "></li>
                    <li><img src="img/hah_img/dining/더뷔페03.jpg " alt=" "></li>
                    <li><img src="img/hah_img/dining/더뷔페04.jpg " alt=" "></li>
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
                            <dt>좌석수</dt>
                            <dd>총 150석</dd>
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
            <h2 class="operatingHours">운영시간</h2>
            <table class="operatingHours-Info">
                <tbody>
                    <tr>
                        <th rowspan="3">WEEKDAY / WEEKEND </th>
                        <th>BREAKFAST</th>
                        <td>7:00 ~ 10:30</td>
                    </tr>
                    <tr>
                        <th>LUNCH</th>
                        <td>12:00 ~ 14:30</td>
                    </tr>
                    <tr>
                        <th>DINNER</th>
                        <td>18:00 ~ 21:30</td>
                    </tr>
                </tbody>
            </table>
            <p class="guide1">
                * 제주특별자치도 '사회적 거리두기 2단계' 연장에 따라 2/15(월)부터 호텔 내 전 식음업장이 21:00까지 마갑됩니다. <br> 본 이용 지침은 2월 31일까지 적용되며, 추후 정부 지침에 따라 변경 될 수 있습니다.
            </p>
            <p class="guide2">
                * 코로나19에 따른 사회적 거리두기 정부 시책이 진행될 경우, 뷔페 조식은 다른 장소 및 단품 메뉴로 대체 제공될 수 있습니다. <br> (추후 상황에 따라 관련 내용 공지 예정)
            </p>

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
	<script src="js/Dining/dining.js"></script>
</body>



</html>
