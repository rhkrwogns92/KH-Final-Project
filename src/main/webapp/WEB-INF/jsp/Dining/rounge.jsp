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
<link rel="stylesheet" href="css/Dining/rounge.css">

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
                    MUSIC ROUNGE
                </h2>
                <p class="titleSmall">
                    색다른 공연을 만나는 라이브 뮤직 라운지 & 바
                </p>
                국내외 정상급 재즈 리스트들의 공연이 진행되는 뮤직 라운지에서는 화려한 칵테일과 <br> 유러피안 스타일 다이닝 메뉴가 준비되어 있으며 입장하시는 순간부터 <br> 나가시는 순간까지 차별화된 경험을 약속 드립니다. <br> </div>
            <div class="imageArea">
                <ul class="slides">
                    <li>
                        <img src="img/hah_img/dining/라운지01.jpg" alt=" "></li>
                    <li><img src="img/hah_img/dining/라운지02.jpg " alt=" "></li>
                    <li><img src="img/hah_img/dining/라운지03.jpg " alt=" "></li>
                    <li><img src="img/hah_img/dining/라운지04.jpg " alt=" "></li>
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
                            <dd>총 75석</dd>
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
                        <th>DAY</th>
                        <td>18:00 ~ 24:00</td>
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
