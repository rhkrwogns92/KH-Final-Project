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
    <link rel="stylesheet" href="css/guestroom/guestRoomInfoAddView.css">
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
        <p>${guestRoomName } GuestRoom Info Add View</p>
        </h1>
        <form action="/guestRoomInfoInsert" method="post">
        <label for="">GuestRoomName</label>
        <input name="guestRoomName" type="text" readonly value="${guestRoomName }" />
		<label for="">GuenstRoomNumber</label>
		<input name="guestRoomNo" placeholder="객실 호수 입력(숫자만)" type="text" />
		<label for="">GuestRoomView</label>
		<input name="guestRoomView" placeholder="객실 전망 입력" type="text" />
		<label for="">GuestRoomArea</label>
		<input name="guestRoomArea" placeholder="객실 면적 입력(숫자만)" type="text" />
		<label for="">StandardPersonnel</label>
		<input name="standardPersonnel" placeholder="객실 기준 인원(숫자만)" type="text" />
		<label for="">GuestRoomBedType</label>
		<input name="guestRoomBedType" placeholder="객실 침대 유형" type="text" />	
		<label for="">AdultPrice</label>
		<input name="adultPrice" placeholder="성인 추가금 입력(숫자만)" type="text" />
		<label for="">ChildPrice</label>
		<input name="childPrice" placeholder="어린이 추가금 입력(숫자만)" type="text" />
		<label for="">GuestRoomPrice</label>
		<input name="guestRoomPrice" placeholder="객실 가격 입력(숫자만)" type="text" />
		<label for="">StandardNumber(중요 객실당 하나만 나머지는 0 입력)</label>
		<input name="standardNo" placeholder="객실의 기준으로 설정하는 정보만 숫자 1 입력 객실당 하나만" type="text" /><br />
		<button class="jypButton" type="submit">추가</button> <br />
		<div class="dkQKrclsp">
		<a class="jypButton2" href="/guestRoomAdminInfoView?guestRoomName=${guestRoomName }">취소</a> 
        </div>
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
