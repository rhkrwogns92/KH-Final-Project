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

    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="css/Travel/tourismAddView.css">
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
    
    
    <style>
    	
    </style>
</head>

<body>
    <div class="wrap">
        <!--header-->
        <jsp:include page="../common/header.jsp"/>
        <!--header end-->
        <!--section start-->
	    <section class="hotelHugWrap">
	    	<h1 class="buttonTitle">
	        <p>Tourism Add View</p>
	        </h1>
			<form action="/tourismInsert" method="post" enctype="multipart/form-data">
				<label for="">&nbsp;&nbsp; TouristSpotName</label>
				<input name="tsName" type="text" placeholder="관광지 이름 입력" />
				
				<label for="">TouristSpotKeyword</label>
				<textarea name="tsKeyword" id="" cols="105" rows="10" placeholder="관광지 키워드 입력"></textarea>
				
				<label for="">TouristSpotAddress</label>
				<textarea name="tsAddress" id="" cols="105" rows="10" placeholder="관광지 주소 입력"></textarea>
				
				<label for="">TouristSpotPhone</label>
				<textarea name="tsPhone" id="" cols="105" rows="10" placeholder="관광지 연락처 입력"></textarea>
				
				<label for="">TouristSpotIntroduce</label>
				<textarea name="tsIntroduce" id="" cols="105" rows="10" placeholder="관광지 소개 입력"></textarea>
				
				<label for="">TouristSpotInformation</label>
				<textarea name="tsInformation" id="" cols="105" rows="10" placeholder="관광지 상세정보 입력"></textarea>
				
				<label for="">TouristSpotUsetime</label>
				<textarea name="tsUsetime" id="" cols="105" rows="10" placeholder="관광지 이용시간 입력"></textarea>
				
				<label for="">TouristSpotRateinfo</label>
				<textarea name="tsRateinfo" id="" cols="105" rows="10" placeholder="관광지 요금정보 입력"></textarea>
				
				<label for="">TouristSpotAmenities</label>
				<textarea name="tsAmenities" id="" cols="105" rows="10" placeholder="관광지 편의시설 입력"></textarea>
				
				<label for="">TouristSpotContent1</label>
				<textarea name="tsContent1" id="" cols="105" rows="10" placeholder="관광지 내용1 입력"></textarea>
				
				<label for="">TouristSpotContent2</label>
				<textarea name="tsContent2" id="" cols="105" rows="10" placeholder="관광지 내용2 입력"></textarea>	
				
				<label for="">&nbsp;&nbsp;&nbsp;&nbsp; ImageChoice</label>
				<input class="images" name="image1" type="file"/>
				<input class="images" name="image2" type="file"/>
				<input class="images" name="image3" type="file"/>
				<input class="images" name="image4" type="file"/>
				<input class="tourismAddButton" type="submit" value="추가" />
			</form>
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


</body>

</html>
