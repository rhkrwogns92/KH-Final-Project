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
	<link rel="stylesheet" href="css/bootstrapcss/kfonts2.css">
	
	
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
	<link rel="stylesheet" href="css/AboutUs/directions.css">
	
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
			<div class="directions-section">
				<div class="directions-title">
					<span class="name">DIRECTIONS</span>
					<p>H.U.G 호텔에 오시는 방법 및 호텔 내부까지 안내해 드립니다.</p>
				</div>
				<div id="map"></div>
				
				<div class="map-info">
					<h4>제주특별자치도 서귀포시 중문관광로 21길 21 H.U.G 호텔</h4>
					<h5>TEL. 064-123-4567</h5>
				</div>
				<div class="container">
					<div class="panel-group" id="accordion">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion"
										href="#collapseOne"> 자동차로 오시는 길 </a>
								</h4>
							</div>
							<div id="collapseOne" class="panel-collapse collapse in">
								<div class="panel-body">
									<hr>
									<strong>제주국제공항 -> 제주 H.U.G 호텔</strong> <br>
									<span class="txt_required">경로 1 </span>(약 1시간 8분 | 총 40.34km) <br>
								 	노형로(2.7km) -> 평화로(16.1km) -> 중산간서로(3.5km) <br>
									<span class="txt_required">경로 2 </span>(약 1시간 12분 | 총 40.24km) <br>
									평화로(16.1km) -> 한창로(4.6km) -> 일주서로(3.4km) <br>
									<hr>
									<strong>제주 H.U.G 호텔 -> 제주국제공항</strong> <br>
									<span class="txt_required">경로 1 </span>(약 51분 | 총 38.70km) <br>
								 	중산간서로(3.3km) -> 평화로(21.0km) -> 노형로(4.3km) <br>
									<span class="txt_required">경로 2 </span>(약 57분 | 총 38.79km) <br>
									상예로(4.3km) -> 산록남로(6.2km) -> 평화로(16.9km) -> 노형로(4.3km) <br>
									<hr>
								</div>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion"
										href="#collapseTwo"> 공항 리무진 버스 </a>
								</h4>
							</div>
							<div id="collapseTwo" class="panel-collapse collapse ">
								<div class="panel-body">
									<hr>
									<strong>제주국제공항 -> 제주 H.U.G 호텔</strong> <br>
									운행시간 : 06:10 ~ 22:50 <br>
									운행간격 : 14분 ~ 16분 <br>
									탑승장소 : 도착장 5번 Gate <br>
									소요시간 : 약 60분 <br>
									<hr>
									<strong>제주 H.U.G 호텔 -> 제주국제공항</strong> <br>
									운행시간 : 06:40 ~ 22:00 <br>
									운행간격 : 14분 ~ 16분 <br>
									탑승장소 : 제주 H.U.G 호텔 정문 앞 <br>
									소요시간 : 약 60분 <br>
									<hr>
								</div>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion"
										href="#collapseThree"> 셔틀 버스 </a>
								</h4>
							</div>
							<div id="collapseThree" class="panel-collapse collapse">
								<div class="panel-body">
									<h2 class="busInfo">운행일정</h2>
									<div class="detailInfo">
						                <ul>
						                    <li>
						                        <dl>
						                            <dt>운행요일</dt>
						                            <dd>매일</dd>
						                        </dl>
						                    </li>
						                    <li>
						                        <dl>
						                            <dt>배차간격</dt>
						                            <dd>30분</dd>
						                        </dl>
						                    </li>
						                    <li>
						                        <dl>
						                            <dt>제주국제공항 승차 위치</dt>
						                            <dd>H.U.G 호텔 1층 출입구 앞 버스 스테이션</dd>
						                        </dl>
						                    </li>
						                </ul>
						            </div>
					         
						            <h2 class="busInfo">첫차/막차 시간</h2>
						            <table class="bustimeInfo-detail">
						                <tbody>
						                    <tr>
						                        <th>출발장소</th>
						                        <th>첫차</th>
						                        <th>막차</th>
						                    </tr>
						                    <tr>
						                    	<td>H.U.G 호텔</td>
						                        <td>05:00</td>
						                        <td>23:00</td>
						                    </tr>
						                    <tr>
						                    	<td>제주공항 1층 8C</td>
						                        <td>05:10</td>
						                        <td>23:10</td>
						                    </tr>
						                </tbody>
						            </table>
							</div>
						</div>
					</div>
				</div>
				<div class="floor-info">
					<h1>층별안내</h1>
						<div class="tower">
							<div id="f9" class="floor">9 &nbsp;Floor</div>
							<div id="f7" class="floor">7 ~ 8 Floor</div>
							<div id="f6" class="floor">6 &nbsp;Floor</div>
							<div id="f4" class="floor">4 ~ 5 Floor</div>
							<div id="f2" class="floor">2 ~ 3 Floor</div>
							<div id="f1" class="floor">1 &nbsp;Floor</div>
							<div id="b1" class="floor">B1 &nbsp;Floor</div>
							<div id="b2" class="floor">B2 &nbsp;Floor</div>
						</div>
						<div class="elevator" style="top: 0; left: 0;">Elevator</div>
						
						<img id="runner" class="people" alt="people"
							src="img/hah_img/호텔리어.png">
						<div class="floor-detail-info">
							<div id="info-f9" class="floor-info">ROOM&nbsp; - &nbsp; 로얄</div>
							<div id="info-f7" class="floor-info">ROOM&nbsp; - &nbsp;디럭스</div>
							<div id="info-f6" class="floor-info">DINING&nbsp; - &nbsp;Restaurant(TRATTORIA)<br>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ROUNGE & BAR</div>
							<div id="info-f4" class="floor-info">ROOM&nbsp; - &nbsp;슈페리어</div>
							<div id="info-f2" class="floor-info">ROOM&nbsp; - &nbsp;스탠다드</div>
							<div id="info-f1" class="floor-info">DINING&nbsp; - &nbsp;Restaurant(THE BUFFET)<br>FACILITY&nbsp; - &nbsp;Pool, Sauna</div>
							<div id="info-b1" class="floor-info">FACILITY&nbsp; - &nbsp;Pitness, Spa</div>
							<div id="info-b2" class="floor-info" >FACILITY&nbsp; - &nbsp;Park, Kids</div>
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
		
	<!-- 카카오맵 api -->
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c9936c0ec903e4bde055c51cf5309f5e"></script>

	<script src="js/bootstrapjs/bootstrap.min.js"></script>
	<script src="js/header.js"></script>
	<script src="js/AboutUs/directions.js"></script>
</body>



</html>
