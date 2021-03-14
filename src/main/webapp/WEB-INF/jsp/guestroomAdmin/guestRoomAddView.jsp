<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>

   	<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <!-- <link rel="stylesheet" href="css/bootstrapcss/nomalize.css"> -->
    <link rel="stylesheet" href="css/bootstrapcss/bootstrap.min.css">

    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="css/guestroom/guestRoomAddView.css">
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
        <p>GuestRoom Add View</p>
        </h1>
		<form action="/guestRoomInsert" method="post" enctype="multipart/form-data">
			<label for="">&nbsp;&nbsp; GuestRoomName</label>
			<input name="guestRoomName" type="text" placeholder="객실 이름 입력" />
			<label for="">GuestRoomContents1</label>
			<textarea name="guestRoomContents1" id="" cols="100" rows="10" placeholder="객실에 대한 내용 입력"></textarea>
			<label for="">GuestRoomContents2</label>
			<textarea name="guestRoomContents2" id="" cols="100" rows="10" placeholder="객실에 대한 상세내용 입력"></textarea>
			<label for="">GuestRoomService1</label>
			<textarea name="guestRoomService1" id="" cols="100" rows="10" placeholder="객실에 대한 서비스 입력(최대 8개) / 반드시 콤마(,)를 사용해주세요."></textarea>	
			<label for="">GuestRoomService2</label>
			<textarea name="guestRoomService2" id="" cols="100" rows="10" placeholder="객실에 대한 서비스 입력(최대 8개) / 반드시 콤마(,)를 사용해주세요."></textarea>	
			<label for="">GuestRoomAmenity</label>
			<textarea name="guestRoomAmenity" id="" cols="100" rows="10" placeholder="객실에 대한 소모품 입력(최대 8개) / 반드시 콤마(,)를 사용해주세요."></textarea>
			<label for="">GuestRoomInformation</label>
			<textarea name="guestRoomInformation" id="" cols="100" rows="10" placeholder="객실에 대한 안내사항 입력 / 반드시 콤마(,)를 사용해주세요."></textarea>	
			<label for="">&nbsp;&nbsp;&nbsp;&nbsp; ImageChoice</label>
			<input class="whatTheFuck" name="image1" type="file"/>
			<input class="whatTheFuck" name="image2" type="file"/>
			<input class="whatTheFuck" name="image3" type="file"/>
			<input class="whatTheFuck" name="image4" type="file"/>
			<input class="guestRoomAddButton" type="submit" value="추가" />
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
