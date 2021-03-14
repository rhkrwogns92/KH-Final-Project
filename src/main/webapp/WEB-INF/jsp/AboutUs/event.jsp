<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">

    <!--글씨체 링크 영어-->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="css/AboutUs/event.css">

    <link rel="shortcut icon" href="https://hotel.cloud/wp-content/uploads/2019/10/favicon.png">
    <title> H.U.G HOTEL 제주</title>
</head>

<body>
    <div class="wrap">
        <!--header-->
        <jsp:include page="../common/header.jsp"/>
        <!--header end-->
        <!--section start-->
         <section>
            <div class="event-section">
                <div class="event-title">
                    <span class="name">EVENTS</span>
                    <p>H.U.G 호텔에서 진행되는 다양한 이벤트를 소개합니다.</p>
                </div>
                <div class="event-list">
                    <ul class="list">
                        <li class="event1">
                            <div class="box">
                                <div class="photo">
                                    <img src="img/hah_img/이벤트_1.png" alt="">
                                </div>
                                <div class="detail">
                                    <h3>Floating Cinema</h3>
                                    <p>온 세상의 이곳, 제주의 별빛 아래 펼쳐지는 겨울밤의 로맨틱 시네마, <br> 따뜻한 야외 온수풀에서 낭만과 함께하는 행복한 겨울 여행으로 <br> 여러분을 초대합니다.
                                    </p>
                                    <p>
                                        기간 : 2021.01.17 ~ 2021.03.17 <br> 장소 : 야외 수영장 <br> 시간 : 21:00 ~ 23:00 로맨틱 영화 상영 <br>
                                    </p>
                                    <p>
                                        ✨ 영화 상영작 안내 <br> 홀수날 : 라라랜드 / 짝수날 : 비긴어게인
                                    </p>
                                </div>
                            </div>
                        </li>
                        <li class="event2">
                            <div class="box">
                                <div class="photo">
                                    <img src="img/hah_img/이벤트_2.jpg" alt="">
                                </div>
                                <div class="detail">
                                    <h3>소(牛) 해피 뉴이어 2021 프로모션</h3>
                                    <p>
                                        신축년 새해를 맞아 한 해의 희망찬 시작을 응원하는 <br> '소(牛) 해피 뉴이어 2021' 프로모션!
                                    </p>
                                    <p>
                                        기간 : 2021.01.01 ~ 2021.03.05
                                    </p>
                                    <p>
                                        신축년 새해를 맞아 한 해의 희망찬 시작을 응원하는 <br> '소(牛) 해피 뉴이어 2021' 프로모션!
                                    </p>
                                </div>
                            </div>
                        </li>
                        <li class="event3">
                            <div class="box">
                                <div class="photo">
                                    <img src="img/hah_img/이벤트_3.png" alt="">
                                </div>
                                <div class="detail">
                                    <h3>Lounge Giving Day</h3>
                                    <p>
                                        H.U.G 호텔 라운지가 선사하는 주중 한정 깜짝 혜택을 만나보세요.
                                    </p>
                                    <p>
                                        기간 : 2020.12.26 ~ 2021.02.10 <br> 장소 : LOUNGE & BAR <br> 시간 : 11:00 ~ 17:00
                                    </p>
                                    <p>
                                        ✨소프트 드링크 1인당 1잔 제공
                                    </p>
                                </div>
                            </div>
                        </li>
                        <li class="event4">
                            <div class="box">
                                <div class="photo">
                                    <img src="img/hah_img/이벤트_4.jpg" alt="">
                                </div>
                                <div class="detail">
                                    <h3>코로나 19 제주 피해농가 살리기 프로젝트</h3>
                                    <p> 코로나 19로 힘든 제주 농가도 돕고 맛있는 감자로 면역력도 높이세요! </p>
                                    <p>
                                        기간 : 2020.12.15 ~ 소진시까지 <br> 장소 : RESTAURANT <br> 문의 : 064-123-4567
                                    </p>
                                    <p>
                                        ✔ 제주감자로 만든 스페셜 감자요리 제공 <br> ✔ 주중 런치뷔폐 고객에 한하여 테이블당 제주 구좌 왕특감자 1KG 무료제공
                                    </p>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
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
<script src="js/AboutUs/event.js"></script>
</body>



</html>
