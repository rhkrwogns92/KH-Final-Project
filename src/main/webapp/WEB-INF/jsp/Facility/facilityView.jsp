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
<link rel="stylesheet" href="css/Facility/facilityView.css">

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
            <div class="facility-section">
                <div class="facility-title">
                    <span class="name">FACILITY</span>
                    <p>다채로운 액티비티와 휴식을 함께 <br> 즐길 수 있는 H.U.G 호텔의 시설을 즐겨보세요. </p>
                </div>
                <div class="innerBox">
                    <div class="facilityWrap">
                        <div class="imageBox">
                            <img src="img/hah_img/facility/pool01.jpg" alt="이미지입니다">
                        </div>
                        <div class="facilityContent">
                            <p class="facilityTitle">
                                <span>POOL</span> 하늘과 마주한 로맨틱한 Outdoor Pool
                            </p>
                            <div class="facilityInfo">
                                <p>
                                    <span>위치</span> 1층
                                </p>

                                <a class="buttonTypeSmall" href="/pool"><span>상세 보기</span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="innerBox">
                    <div class="facilityWrap">
                        <div class="imageBox">
                            <img src="img/hah_img/facility/sauna01.jpg" alt="이미지입니다">
                        </div>
                        <div class="facilityContent">
                            <p class="facilityTitle">
                                <span>SAUNA</span> 편안한 휴식을 즐길 수 있는 실내 사우나
                            </p>
                            <div class="facilityInfo">
                                <p>
                                    <span>위치</span> 1층
                                </p>

                                <a class="buttonTypeSmall" href="/sauna"><span>상세 보기</span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="innerBox">
                    <div class="facilityWrap">
                        <div class="imageBox">
                            <img src="img/hah_img/facility/pitness04.jpg" alt="이미지입니다">
                        </div>
                        <div class="facilityContent">
                            <p class="facilityTitle">
                                <span>PITNESS</span> 건강한 하루를 호텔에서도 유지할 수 있게 <br> 도와주는 피트니스클럽
                            </p>
                            <div class="facilityInfo">
                                <p>
                                    <span>위치</span> 지하 1층
                                </p>

                                <a class="buttonTypeSmall" href="/pitness"><span>상세 보기</span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="innerBox">
                    <div class="facilityWrap">
                        <div class="imageBox">
                            <img src="img/hah_img/facility/spa01.jpg" alt="이미지입니다">
                        </div>
                        <div class="facilityContent">
                            <p class="facilityTitle">
                                <span>SPA</span> 지복(至福)의 공간에서 아름답고 건강한 몸과 <br> 평안하고 행복한 마음이 실현됩니다.
                            </p>
                            <div class="facilityInfo">
                                <p>
                                    <span>위치</span> 지하 1층
                                </p>

                                <a class="buttonTypeSmall" href="/spa"><span>상세 보기</span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="innerBox">
                    <div class="facilityWrap">
                        <div class="imageBox">
                            <img src="img/hah_img/facility/park01.jpg" alt="이미지입니다">
                        </div>
                        <div class="facilityContent">
                            <p class="facilityTitle">
                                <span>PARK</span> 재미와 짜릿함이 공존하는 엔터테이먼트 공간
                            </p>
                            <div class="facilityInfo">
                                <p>
                                    <span>위치</span> 지하 2층
                                </p>

                                <a class="buttonTypeSmall" href="/park"><span>상세 보기</span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="innerBox">
                    <div class="facilityWrap">
                        <div class="imageBox">
                            <img src="img/hah_img/facility/kids02.jpg" alt="이미지입니다">
                        </div>
                        <div class="facilityContent">
                            <p class="facilityTitle">
                                <span>KIDS</span> 아이가 자라는 시간, Kids Zone
                            </p>
                            <div class="facilityInfo">
                                <p>
                                    <span>위치</span> 지하 2층
                                </p>

                                <a class="buttonTypeSmall" href="/kids"><span>상세 보기</span></a>
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
