<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="member"/>
</sec:authorize>

<!doctype html>
<html lang="en">

<head>
   	<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

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
    <link rel="stylesheet" href="css/index.css">
    <!-- <script src="https://kit.font.awesome.com/096073a2a8.js" crossorigin="anonymous"></script> -->

	<!-- 객실, 다이닝 swiper -->	
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

    <link rel="shortcut icon" href="https://hotel.cloud/wp-content/uploads/2019/10/favicon.png">
    <title> H.U.G HOTEL 제주</title>
</head>

<body>
    <div class="wrap">
        <!--header-->
        <jsp:include page="common/header.jsp"/>
        <!--header end-->
        
        <!--모달(조건부)-->
        <c:if test="${member.isPwChanged eq false}">
        	<jsp:include page="member/modalChangePw.jsp"/>
        </c:if>
        <jsp:include page="member/modal.jsp"/>
        <!--모달(조건부)-->
        
        <!--section start-->
        <section>
            <!-- 캐러셀 부분 시작 -->
            <div id="carousel-generic" class="carousel slide">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#carousel-generic" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-generic" data-slide-to="1"></li>
                    <li data-target="#carousel-generic" data-slide-to="2"></li>
                    <li data-target="#carousel-generic" data-slide-to="3"></li>
                </ol>
                <!-- Carousel items -->
                <div class="carousel-inner">
                    <div class="item active">
                        <img src="img/hah_img/main/H.U.G 호텔5.png" alt="First slide">
                        <div class="weather-container">
                            <div class="weather-data">
                                <h1 class="location">
                                    🍊
                                    <class class="fas fa-city"></class>
                                </h1>
                                <div class="current-time"></div>
                            </div>
                            <div class="weather-temp">
                                <div class="current-temp"></div>
                                <div class="icon"></div>
                                <div class="feels-like">체감온도</div>
                                <div class="max-temp"></div>
                                <div class="min-temp"></div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="item">
                        <img src="img/hah_img/main/main02.png" alt="Second slide">
                    </div>
                    <div class="item">
                        <img src="img/hah_img/main/main03.png" alt="Third slide">

                    </div>
                    <div class="item">
                        <img src="img/hah_img/main/더뷔페03.jpg" alt="Third slide">
                    </div>
					
                </div>
                <!-- Controls -->
                <a class="left carousel-control" href="#carousel-generic" data-slide="prev">
                    <img src="img/hah_img/left.png" class="control">
                </a>
                <a class="right carousel-control" href="#carousel-generic" data-slide="next">
                    <img src="img/hah_img/right.png" class="control">
                </a>

            </div>
            <!--// 캐러셀 부분 끝  -->
            <div class="contents">
                <div class="main-room">
                    <!-- Swiper -->
                    <div class="swiper-container">
                        <div class="swiper-wrapper">
                            <img class="swiper-slide" src="img/hah_img/main/room01.jpg">
                            <img class="swiper-slide" src="img/hah_img/main/room02.jpg">
                            <img class="swiper-slide" src="img/hah_img/main/room03.jpg">
                            <img class="swiper-slide" src="img/hah_img/main/room04.jpg">
                        </div>
                        <!-- Add Pagination -->
                        <div class="swiper-pagination"></div>
                        <!-- Add Arrows -->
                        <div class="swiper-button-next"></div>
                        <div class="swiper-button-prev"></div>
                    </div>
                    <div class="main-room-title">
                        <h1>ROOM</h1>
                        <h4>애메랄드 빛 바다와 천혜의 <br> 자연이 만들어내는 특별한 여행을 위한 공간</h4>
                        <h5>스탠다드 / 슈페리어 / 디럭스 / 로얄</h5>
                        <button type="button" class="room-button" onclick="location.href='/guestRoomView';">▶</button>
                    </div>
                </div>
                <div class="main-dining">
                    <!-- Swiper -->
                    <div class="swiper-container">
                        <div class="swiper-wrapper">
                            <img class="swiper-slide" src="img/hah_img/main/dining02.jpg">
                            <img class="swiper-slide" src="img/hah_img/main/더뷔페01.jpg">
                            <img class="swiper-slide" src="img/hah_img/main/trattoria01.jpg">
                            <img class="swiper-slide" src="img/hah_img/main/라운지02.jpg">
                        </div>
                        <!-- Add Pagination -->
                        <div class="swiper-pagination"></div>
                        <!-- Add Arrows -->
                        <div class="swiper-button-next"></div>
                        <div class="swiper-button-prev"></div>
                    </div>
                    <div class="main-dining-title">
                        <h1>DINING</h1>
                        <h4>다채로운 미식의 세계로의 초대</h4>
                        <h5>레스토랑 / 라운지 & 바</h5>
                        <button type="button" class="dining-button" onclick="location.href='/diningView';">▶</button>
                        <!-- <button class="dining-button"><a href="">▶</a></button> -->
                    </div>
                </div>
                <div class="main-facility">
                    <div class="main-facility-title">
                        <h1>FACILITIES</h1>
                        <h5>POOL / SAUNA / PITNESS / SPA / PARK / KIDS</h5>
                        <button type="button" class="facility-button" onclick="location.href='/facilityView';">▶</button>
                    </div>
					<div class="facility-container">
						<div class="box">
							<img src="img/hah_img/main/pool02.jpg"> <span>POOL</span>
						</div>
						<div class="box">
							<img src="img/hah_img/main/sauna01.jpg"> <span>SAUNA</span>
						</div>
						<div class="box">
							<img src="img/hah_img/main/pitness01.jpg"> <span>PITNESS</span>
						</div>
						<div class="box">
							<img src="img/hah_img/main/spa02.jpg"> <span>SPA</span>
						</div>
						<div class="box">
							<img src="img/hah_img/main/park02.jpg"> <span>PARK</span>
						</div>
						<div class="box">
							<img src="img/hah_img/main/kids01.jpg"> <span>KIDS</span>
						</div>
					</div>
					<!-- <div class="halfGallery">
                        <ul class="halfCont">
                            <li class="on" style="width: 700px; transition: width 0.7s ease 0s;">
                                <img src="img/hah_img/main/pool02.jpg" alt="">
                            </li>
                            <li style="transition: width 0.7s ease 0s;">
                                <img src="img/hah_img/main/sauna01.jpg" alt="">
                            </li>
                            <li style="transition: width 0.7s ease 0s;">
                                <img src="img/hah_img/main/pitness01.jpg" alt="">
                            </li>
                            <li style="transition: width 0.7s ease 0s;">
                                <img src="img/hah_img/main/spa02.jpg" alt=""> 
                            </li>
                            <li style="transition: width 0.7s ease 0s;">
                                <img src="img/hah_img/main/park02.jpg" alt="">
                            </li>
                            <li style="transition: width 0.7s ease 0s;">
                                <img src="img/hah_img/main/kids01.jpg" alt="">
                            </li>
                        </ul>
                    </div> -->
                </div>
                <div class="main-membership">
                    <h1>MEMBERSHIP</h1>
                    <div class="contents">
                        <div class="card">
                            <div class="front"><img src="img/hah_img/Hmembership_F.png" alt=""></div>
                            <div class="back"><img src="img/hah_img/Hmembership_B.png" alt=""></div>
                        </div>
                    </div>
                    <div class="explain">
                        <h3>H.U.G H</h3>
                        <h5>H.U.G 호텔의 멤버십은 객실 할인 혜택이 있는 H.U.G H 멤버십을 운영하고 있습니다. <br><br> 특이하게도 등급이 나뉘지 않고, 30% 할인을 해드립니다. <br><br> 자세한 문의는 신청 문의를 통해 전화해주시거나<br><br> 신청서 작성을 통하여 신청서 작성을 해주시길 바랍니다.<br><br> 신청문의. 064-123-4567 </h5>
                        <a href=""><button type="button">신청서 작성</button></a>
                        
                    </div>
                </div>
                <div class="main-event">
                    <h1>EVENTS</h1>
                    <h4>H.U.G 호텔에서 진행되는 다양한 이벤트를 소개합니다.</h4>
                    <ul>
                        <li class="first">
                            <img src="img/hah_img/이벤트_1.png" alt="" >
                            <h4>Floating Cinema</h4>
                            <h5>2021.01.17 ~ 2021.03.17</h5>
                        </li>
                        <li class="second">
                            <img src="img/hah_img/이벤트_2.jpg" alt="">
                            <h4>소(牛) 해피 뉴이어 2021 프로모션</h4>
                            <h5>2021.01.01 ~ 2021.03.05</h5>
                        </li>
                        <li class="last">
                            <img src="img/hah_img/이벤트_3.png" alt="">
                            <h4>Lounge Giving Day</h4>
                            <h5>2020.12.26 ~ 2021.02.10</h5>
                        </li>
                    </ul>

                    <a href="/event" class="allview">전체보기</a>
                    <br>
                    <br>
                    <br>
                    <br>
                </div>
            </div>
        </section>
        <!--section end-->
        <!--footer start-->
        <jsp:include page="common/footer.jsp"/>
        <!--footer end-->
    </div>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="js/bootstrapjs/bootstrap.min.js"></script>
<script src="js/header.js"></script>
<script src="js/index.js"></script>

<!--모달(조건부)-->
<script>
	var isFirstLogin = ${isFirstLogin};
	$.fn.multiline = function(text) {
	    this.text(text);
	    this.html(this.html().replace(/\n/g,'<br/>'));
	    return this;
	};
	if(isFirstLogin = "isFirstLogin") {
		$('.modal-title').text('회원가입 성공');
		$('.modal-body').multiline(`${member.nick} 님의 회원가입을 축하드립니다. \n 항상 최선을 다하는 HUG HOTEL이 되겠습니다.`);
		$(function() {
			$('#modal').modal({
				backdrop: 'static',
				keyboard: false
			});
		})
	}
</script>
<!--모달(조건부)-->



</body>

</html>
