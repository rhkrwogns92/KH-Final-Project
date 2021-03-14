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
    <link rel="stylesheet" href="css/Travel/foodDetailView.css">
	

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
			<!-- <div class="tourismDetailView-section"> -->

			<div class="sub_wrap">
				<img alt=""
					src="../../../img/${foodDetail.frImage1 }">
				<div class="inner_wrap">
					<div class="sub_info_area">
						<div class="sub_info_title">
							<h3>${foodDetail.frName }</h3>
						</div>
						<div class="basic_information">
							<p class="info_tit">기본정보</p>
							<div class="clear">
								<p class="info_sub_tit">주소</p>
								<p class="info_sub_cont">${foodDetail.frAddress }</p>
							</div>
							<div class="clear">
								<p class="info_sub_tit">연락처</p>
								<p class="info_sub_cont">${foodDetail.frPhone }</p>
							</div>
						</div>

					</div>
				</div>
			</div>
			<div class="detail">
				<div class="intro">
					<h3>소개</h3>
					<p>${foodDetail.frIntroduce }</p>
				</div>
				<div class="detail-info">
					<h3>상세정보</h3>
					<p>${foodDetail.frInformation }</p>
				</div>
				<div class="info">
					<ul>
						<li>
							<dl>
								<dt>이용시간</dt>
								<dd>
									${foodDetail.frUsetime }
								</dd>
							</dl>
						</li>
						<li>
							<dl>
								<dt>편의시설</dt>
								<dd>
									${foodDetail.frAmenities }
								</dd>
							</dl>
						</li>
					</ul>
				</div>
			</div>
			<div class="contents">
				<img alt=""
					src="../../../img/${foodDetail.frImage2 }">
				<p>
					${foodDetail.frContent1 }
				</p>
				<div class="viewer">
					<div class="row">
						<div class="col">
							<img
								src="../../../img/${foodDetail.frImage3 }">
						</div>
						<div class="col">
							<img
								src="../../../img/${foodDetail.frImage4 }">
						</div>
					</div>
				</div>
				<p>
					${foodDetail.frContent2 }
				</p>
			</div>
			<!-- </div> -->
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
<script src="js/Travel/foodDetailView.js"></script>
</body>



</html>
