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
<link rel="stylesheet" href="css/Facility/pool.css">

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
                    POOL
                </h2>
                <p class="titleSmall">
                    하늘과 마주한 로맨틱한 Outdoor Pool
                </p>
                이국적인 낮의 경관과 로맨틱한 밤 분위기를 동시에 만날 수 있는 야외수영장은 <br> 사계절 내내 아름다움을 자랑하는 H.U.G 호텔의 시그니처 스팟입니다.
            </div>
            <div class="imageArea">
                <ul class="slides">
                    <li>
                        <img src="img/hah_img/facility/pool01.jpg" alt=" "></li>
                    <li><img src="img/hah_img/facility/pool02.jfif " alt=" "></li>
                    <li><img src="img/hah_img/facility/pool03.jpg " alt=" "></li>
                    <li><img src="img/hah_img/facility/pool04.jpg " alt=" "></li>
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
                            <dd>09:00 ~ 19:00 <br> (장비시간 14:00 ~ 15:00)</dd>
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
            <p class="guide1">
                * 안전한 방역지침과 효과적인 고객분산을 위하여 대기시간이 발생할 수 있습니다.
            </p>
            <h2 class="facilityInfo">시설안내</h2>
            <table class="facilityInfo-detail">
                <tbody>
                    <tr>
                        <th rowspan="3" style="width: 400px;">성인 수영장 </th>
                        <th>깊이</th>
                        <td>1.1M</td>
                    </tr>
                    <tr>
                        <th>길이 / 너비</th>
                        <td>18M / 11.7M </td>
                    </tr>
                    <tr>
                        <th>온도</th>
                        <td>5-9월 27-30도, 10-4월 30-33도</td>
                    </tr>
                </tbody>
            </table>
            <table class="facilityInfo-detail" style="margin-bottom: 80px;">
                <tbody>
                    <tr>
                        <th rowspan="3" style="width: 400px;">키즈 수영장 </th>
                        <th>깊이</th>
                        <td>0.5M</td>
                    </tr>
                    <tr>
                        <th>길이 / 너비</th>
                        <td>8.5M / 9.3M </td>
                    </tr>
                    <tr>
                        <th>온도</th>
                        <td>5-9월 27-30도, 10-4월 30-33도</td>
                    </tr>
                </tbody>
            </table>

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
