<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!doctype html>
<html lang="en">

<head>
   	<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrapcss/nomalize.css">
    <link rel="stylesheet" href="css/bootstrapcss/bootstrap.min.css">

    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="css/guestroom/guestRoomDetailView.css">
    <!-- <script src="https://kit.font.awesome.com/096073a2a8.js" crossorigin="anonymous"></script> -->

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

    <link rel="shortcut icon" href="https://hotel.cloud/wp-content/uploads/2019/10/favicon.png">
    <title> H.U.G HOTEL 제주</title>
</head>

<body>
    <div class="wrap">
        <!--header-->
        <jsp:include page="../common/header.jsp"/>
        <!--header end-->
        <!--section start-->
        <section class="hotelHugDetailWrap">
            <h2 class="contDetailTitle">
                <p class="titleBig">
                    ${list.guestRoomName }
                </p>
                <p class="titleSmall">
                	${list.guestRoomContents1 }
                </p>
                	${list.guestRoomContents2 }
            </h2>
            <div class="imageArea">
                <ul class="slides">
                    <li><img src="../../../img/${list.guestRoomImage1 }" alt=""></li>
                    <li><img src="../../../img/${list.guestRoomImage2 }" alt=""></li>
                    <li><img src="../../../img/${list.guestRoomImage3 }" alt=""></li>
                    <li><img src="../../../img/${list.guestRoomImage4 }" alt=""></li>
                </ul>
            </div>
            <p class="controls">
                <a class="prev">&#10094;</a>
                <span class="dot on"></span> 
                <span class="dot"></span> 
                <span class="dot"></span>
                <span class="dot"></span>
                <a class="next">&#10095;</a>
            </p>
            <div class="buttonArea">
                <a href=""><span>문의하기</span></a>
                <sec:authorize access="hasRole('ROLE_REGURAL')">
                    <a href="/reservationView1"><span>예약하기</span></a>
                    </sec:authorize>
                    <sec:authorize access="isAnonymous()">
                   <a href="/login"><span>예약하기</span></a>
                    </sec:authorize>
            </div>
            <div class="detailInfo">
                <h3>상세정보</h3>
                <div class="infoDetail">
                    <div class="listType1">
                    <h3>객실 서비스</h3>
                        <ul  class="floatLeft">
                            <c:forEach var="service1" items="${serviceList1 }">
                            <li>
                                * ${service1 }
                            </li>
                            </c:forEach>
                        </ul>
                        <ul class="floatRight">
                            <c:forEach var="service2" items="${serviceList2 }">
                            <li>
                                * ${service2 }
                            </li>
                            </c:forEach>
                        </ul>
                    </div>
                    <div class="listType2">   
                        <h3>어메니티</h3>     
                        <ul>
                            <c:forEach var="amenity" items="${amenityList }">
                            <li>
                                * ${amenity }
                            </li>
                            </c:forEach>
                        </ul>
                    </div>
                    <div class="listType3">
                    <dl>    
                        <dt class="dHead">체크인 아웃</dt>
                        <dd>
                            <dl>
                                <dt class="dBody">Check in</dt>
                                <dd class="dFoot">03:00 PM</dd>
                                <dt class="dBody">Check out</dt>
                                <dd class="dFoot">11:00 AM</dd>
                            </dl>
                        </dd>
                    </dl>
                    </div>
                </div>
            </div>
    
    
            <div class="guideBox">
                <h2 class="guideList1">
                    안내사항
                </h2>
                <ul class="guideList2">
                    <c:forEach var="information" items="${informationList }">
                    <li>
                    	* ${information }
                    </li>
                    </c:forEach>
                </ul>
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
<script>
    let slides = document.querySelector('.slides');
        slide = document.querySelectorAll('.slides li'),
        dot = document.querySelectorAll('.dot'),
        currentIdx = 0,
        slideCount = slide.length,
        slideWidth = 1120,
        slideMargin = 30,
        prevBtn = document.querySelector('.prev'),
        nextBtn = document.querySelector('.next');



        slides.style.width = (slideWidth + slideMargin)*slideCount - slideMargin + 'px';

        function moveSlide(num) {
            slides.style.left = -num * 1150 + 'px';
            dot[num].className = 'dot on';
            console.log(num);
            if(num > 0 && num <= 3){
            dot[num-1].className = 'dot';
            }
            if(num == 0) {
                dot[3].className = 'dot';
            }
            if(num <= 2) {
                dot[num+1].className = 'dot';
            }
            if(num == 3){
                dot[0].className = 'dot';
            }
            currentIdx = num;               
        }
        nextBtn.addEventListener('click', function(){
            if(currentIdx < slideCount - 1){
            moveSlide(currentIdx + 1);
            }else{
                moveSlide(0);
            }
        });
        prevBtn.addEventListener('click', function(){
            if(currentIdx > 0){
            moveSlide(currentIdx - 1);
            }else{
                moveSlide(slideCount - 1);
            }
        });
</script>


</body>

</html>
