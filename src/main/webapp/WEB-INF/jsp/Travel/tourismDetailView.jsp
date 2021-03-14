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
<link rel="stylesheet" href="css/Travel/tourismDetailView.css">


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
			<!-- <div class="tourismDetailView-section"> -->

			<div class="sub_wrap">
				<img alt=""
					src="../../../img/${tourDetail.tsImage1 }">
				<div class="inner_wrap">
					<div class="sub_info_area">
						<div class="sub_info_title">
							<h3>${tourDetail.tsName}</h3>
						</div>
						<div class="tag_area">
							<p class="best_tag">${tourDetail.tsKeyword}
						</div>
						<div class="basic_information">
							<p class="info_tit">기본정보</p>
							<div class="clear">
								<p class="info_sub_tit">주소</p>
								<p class="info_sub_cont">${tourDetail.tsAddress}</p>
							</div>
							<div class="clear">
								<p class="info_sub_tit">연락처</p>
								<p class="info_sub_cont">${tourDetail.tsPhone}</p>
							</div>
						</div>

					</div>
				</div>
			</div>
			<div class="detail">
				<div class="intro">
					<h3>소개</h3>
					<p>${tourDetail.tsIntroduce}</p>
				</div>
				<div class="detail-info">
					<h3>상세정보</h3>
					<p>
						${tourDetail.tsInformation }
					</p>
				</div>
				<div class="info">
					<ul>
						<li>
							<dl>
								<dt>이용시간</dt>
								<dd>
									${tourDetail.tsUsetime}
								</dd>
							</dl>
						</li>
						<li>
							<dl>
								<dt>요금정보</dt>
								<dd>
									${tourDetail.tsRateinfo}
								</dd>
							</dl>
						</li>
					
						<li>
							<dl>
								<dt>편의시설</dt>
								<dd>
									${tourDetail.tsAmenities}
								</dd>
							</dl>
						</li>
					</ul>
				</div>
			</div>
			<div class="contents">
				<img alt=""
					src="../../../img/${tourDetail.tsImage2}">
				<p>
					${tourDetail.tsContent1}
				</p>
				<div class="viewer">
					<div class="row">
						<div class="col">
							<img
								src="../../../img/${tourDetail.tsImage3}">
						</div>
						<div class="col">
							<img
								src="../../../img/${tourDetail.tsImage4}">
						</div>
					</div>
				</div>
				<p>
					${tourDetail.tsContent2}
				</p>
			</div>
			<!-- </div> -->
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
	<script src="js/bootstrapjs/bootstrap.min.js"></script>
	<script src="js/header.js"></script>
	<script src="js/Travel/tourismDetailView.js"></script>
</body>



</html>
