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
<link rel="stylesheet" href="css/Dining/restaurant2.css">

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
                    TRATTORIA
                </h2>
                <!-- <p class="titleSmall">
                    고급스러운 색체와 감각적인 분위기를 지닌 풀빌라의 정석, 로얄 풀빌라
                </p> -->
                H.U.G 호텔의 시그니처 메뉴와 제주 로컬 식재료가 만나 <br> H.U.G 호텔 제주만의 스타일로 재해석한 이탈리안 캐주얼 다이닝 레스토랑
            </div>
            <div class="imageArea">
                <ul class="slides">
                    <li><img src="img/hah_img/dining/trattoria01.jpg" alt=" "></li>
                    <li><img src="img/hah_img/dining/trattoria02.jpg " alt=" "></li>
                    <li><img src="img/hah_img/dining/trattoria03.jpg " alt=" "></li>
                    <li><img src="img/hah_img/dining/trattoria04.jpg " alt=" "></li>
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
                            <dd>H.U.G 호텔 제주 6층</dd>
                        </dl>
                    </li>
                    <li>
                        <dl>
                            <dt>좌석수</dt>
                            <dd>총 80석</dd>
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
                        <th>LUNCH</th>
                        <td>12:00 ~ 14:30</td>
                    </tr>
                    <tr>
                        <th>DAY TIME</th>
                        <td>14:30 ~ 17:30</td>
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
