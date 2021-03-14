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
<link rel="stylesheet" href="css/Dining/diningView.css">

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
		<section>
            <div class="dining-section">
                <div class="dining-title">
                    <span class="name">DINING</span>
                    <p>미슐랭 스타 레스토랑부터 트렌디한 Bar까지, <br> H.U.G 호텔에서 펼쳐지는 미식의 세계로 초대합니다. </p>
                </div>
                <div class="innerBox">
                    <div class="diningWrap">
                        <div class="imageBox">
                            <img src="img/hah_img/dining/더뷔페01.jpg" alt="이미지입니다">
                        </div>
                        <div class="diningContent">
                            <p class="diningTitle">
                                <span>THE BUFFET</span> 창 밖으로 펼쳐지는 오름정원의 아름다운 전망과 함께 <br> H.U.G 호텔의 품격을 담은 130여 가지의 <br> 다양한 메뉴를 제공하는 뷔페 레스토랑
                            </p>
                            <div class="diningInfo">
                                <p>
                                    <span>위치</span> 1층
                                </p>

                                <a class="buttonTypeSmall" href="/restaurant1"><span>상세 보기</span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="innerBox">
                    <div class="diningWrap">
                        <div class="imageBox">
                            <img src="img/hah_img/dining/trattoria01.jpg" alt="이미지입니다">
                        </div>
                        <div class="diningContent">
                            <p class="diningTitle">
                                <span>TRATTORIA</span> H.U.G 호텔의 시그니처 메뉴와 제주 로컬 <br> 식재료가 만나 H.U.G 호텔 제주만의 스타일로 <br> 재해석한 이탈리안 캐주얼 다이닝 레스토랑
                            </p>
                            <div class="diningInfo">
                                <p>
                                    <span>위치</span> 6층
                                </p>

                                <a class="buttonTypeSmall" href="/restaurant2"><span>상세 보기</span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="innerBox">
                    <div class="diningWrap">
                        <div class="imageBox">
                            <img src="img/hah_img/dining/라운지01.jpg" alt="이미지입니다">
                        </div>
                        <div class="diningContent">
                            <p class="diningTitle">
                                <span>MUSIC ROUNGE</span> 색다른 공연을 만나는 라이브 뮤직 라운지 & 바
                            </p>
                            <div class="diningInfo">
                                <p>
                                    <span>위치</span> 6층
                                </p>

                                <a class="buttonTypeSmall" href="/rounge"><span>상세 보기</span></a>
                            </div>
                        </div>
                    </div>
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
	<script src="js/bootstrap.min.js"></script>
	<script src="js/header.js"></script>

</body>



</html>
