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
<link rel="stylesheet" href="css/Travel/tourismView.css">


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
			<div class="tourismView-section">
				<div class="tourismView-title">
					<span class="name">관광지</span>
					<p>
						내가 가본 제주는 어디까지일까? <br> 368개의 크고 작은 오름을 비롯하여 눈 돌리면 어디에서나 마주치는
						한라산 그리고 푸른 바다... <br> 수많은 제주의 보석 같은 여행지를 안내해드립니다.
					</p>
				</div>
				<div class="map">
					<img class="map" alt="" src="img/hah_img/map.jpg" usemap="#tourmap"
						name="point" width="1120" height="1037"
						onClick="javascript:getLoc()">
					<map name="tourmap">
						<area shape="circle" coords="189,574,7" target="_self"
							onmouseover="changePopupText2('협재해수욕장','제주시 한림읍 한림로 329-10 ',430,815);" 
							onmouseout="hidePopup();"
							alt="" href="/tourismDetailView?tsName=${tourism.name1}">
						<area shape="circle" coords="242,502,7" target="_self"
							onmouseover="changePopupText2('애월해안도로','제주시 애월읍 애월해안로',540,740);" 
							onmouseout="hidePopup();"
							alt="" href="/tourismDetailView?tsName=${tourism.name2}">
						<area shape="circle" coords="537,409,7" target="_self"
							onmouseover="changePopupText2('용두암','제주시 용두암길 15',835,645);" 
							onmouseout="hidePopup();"
							alt="" href="/tourismDetailView?tsName=${tourism.name5}">
						<area shape="circle" coords="661,369,7" target="_self"
							onmouseover="changePopupText2('제주레포츠랜드','제주시 조천읍 와흘상서2길 47',930,610);" 
							onmouseout="hidePopup();"
							alt="" href="/tourismDetailView?tsName=${tourism.name13}">
						<area shape="circle" coords="721,429,7" target="_self"
							onmouseover="changePopupText2('제주4.3평화공원','제주시 명림로 430',1090,665);" 
							onmouseout="hidePopup();"
							alt="" href="/tourismDetailView?tsName=${tourism.name4}">
						<area shape="circle" coords="765,331,7" target="_self"
							onmouseover="changePopupText2('김녕해수욕장','제주시 구좌읍 구좌해안로 237', 1030,570);" 
							onmouseout="hidePopup();"
							alt="" href="/tourismDetailView?tsName=${tourism.name8}">
						<area shape="circle" coords="856,326,7" target="_self"
							onmouseover="changePopupText2('월정리해변','제주시 구좌읍 해맞이해안로 480-1',1180,560);" 
							onmouseout="hidePopup();"
							alt="" href="/tourismDetailView?tsName=${tourism.name7}">
						<area shape="circle" coords="340,673,7" target="_self"
							onmouseover="changePopupText2('카멜리아힐','서귀포시 안덕면 병악로 166',620,910);" 
							onmouseout="hidePopup();"
							alt="" href="/tourismDetailView?tsName=${tourism.name16}">
						<area shape="circle" coords="428,645,7" target="_self"
							onmouseover="changePopupText2('뽀로로&타요 테마파크 제주','서귀포시 안덕면 병악로 269',670,880);" 
							onmouseout="hidePopup();"
							alt="" href="/tourismDetailView?tsName=${tourism.name18}">
						<area shape="circle" coords="601,602,7" target="_self"
							onmouseover="changePopupText2('한라산국립공원','제주시 1100로 2070-61',900,840);" 
							onmouseout="hidePopup();"
							alt="" href="/tourismDetailView?tsName=${tourism.name3}">
						<area shape="circle" coords="752,508,7" target="_self"
							onmouseover="changePopupText2('사려니숲길','제주시 조천읍 교래리 산 137-1',1020,740);" 
							onmouseout="hidePopup();"
							alt="" href="/tourismDetailView?tsName=${tourism.name6}">
						<area shape="circle" coords="889,478,7" target="_self"
							onmouseover="changePopupText2('비자림','제주시 구좌읍 비자숲길 55',1200,715);" 
							onmouseout="hidePopup();"
							alt="" href="/tourismDetailView?tsName=${tourism.name9}">
						<area shape="circle" coords="1064,377,7" target="_self"
							onmouseover="changePopupText2('우도','제주시 우도면 삼양고수물길 1',1300,600);" 
							onmouseout="hidePopup();"
							alt="" href="/tourismDetailView?tsName=${tourism.name10}">	
						<area shape="circle" coords="1044,460,7" target="_self"
							onmouseover="changePopupText2('성산일출봉','서귀포시 성산읍 일출로 284-12',1310,700);" 
							onmouseout="hidePopup();"
							alt="" href="/tourismDetailView?tsName=${tourism.name12}">
						<area shape="circle" coords="1029,506,7" target="_self"
							onmouseover="changePopupText2('섭지코지','서귀포시 성산읍 고성리',1335,840);" 
							onmouseout="hidePopup();"
							alt="" href="/tourismDetailView?tsName=${tourism.name11}">
						<area shape="circle" coords="699,708,7" target="_self"
							onmouseover="changePopupText2('정방폭포','서귀포시 칠십리로214번길 37',1010,945);" 
							onmouseout="hidePopup();"
							alt="" href="/tourismDetailView?tsName=${tourism.name14}">
						<area shape="circle" coords="666,746,7" target="_self"
							onmouseover="changePopupText2('천지연폭포','서귀포시 남성중로 2-15',920,985);" 
							onmouseout="hidePopup();"
							alt="" href="/tourismDetailView?tsName=${tourism.name15}">
						<area shape="circle" coords="441,777,7" target="_self"
							onmouseover="changePopupText2('주상절리대','서귀포시 이어도로 36-30',750,1015);" 
							onmouseout="hidePopup();"
							alt="" href="/tourismDetailView?tsName=${tourism.name17}">
						<area shape="circle" coords="259,820,7" target="_self"
							onmouseover="changePopupText2('송악산','서귀포시 대정읍 송악관광로 421-1',570,1060);" 
							onmouseout="hidePopup();"
							alt="" href="/tourismDetailView?tsName=${tourism.name20}">
						<area shape="circle" coords="243,885,7" target="_self"
							onmouseover="changePopupText2('마라도','서귀포시 대정읍 마라로101번길 46',430,1140);" 
							onmouseout="hidePopup();"
							alt="" href="/tourismDetailView?tsName=${tourism.name19}">
					</map>
					<!-- 마우스오버 상자 -->
				    <div id="popup" style="background-color:#193f6e;position:absolute;opacity:0;border:1px solid black;border-radius:8%;padding:5px 12px;"
				    onmouseover="showPopup();" onmouseout="hidePopup();">
				      <!-- <a id="popup_addr" href="#" style="text-decoration:none;color:white;" target="_blank"> -->
				        <p id="popup_title" style="margin:0;padding:0;font-size:14px;line-height:20px;color:white;text-align:left;"></p> 	        
				        <p id="popup_addr" style="margin:0;padding:0;font-size:11px;line-height:20px;color:white;text-align:left;"></p>
				        <!-- <p id="popup_description" style="margin:0;padding:0;font-size:12px;line-height:12px;text-align:center;"></p> -->
				      <!-- </a> -->
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
	<script type="text/javascript"
		src="http://davidlynch.org/projects/maphilight/jquery.maphilight.min.js"></script>
	<script src="js/bootstrapjs/bootstrap.min.js"></script>
	<script src="js/header.js"></script>
	<script src="js/Travel/tourismView.js"></script>
	
</body>



</html>
