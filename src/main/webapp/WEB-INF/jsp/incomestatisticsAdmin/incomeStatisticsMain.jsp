<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
    <link rel="stylesheet" href="css/reservation/incomeStatisticsMain.css">
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
    <section class="hotelHugWrap">
        <h1 class="buttonTitle">
            <p>수입 / 통계 관리</p>
        </h1>
		<form class="searchBox1" id="searchBox1" >
		<select name="choiceYear">
			<option value="0">DATE</option>
			<option value="202000">2020년</option>
			<option value="202100">2021년</option>
			<option value="202200">2022년</option>
			<option value="202300">2023년</option>
		</select>
		<span id="searchBtn1" >MonthlyStastistics</span>
		</form>
		<form class="searchBox2" id="searchBox2">
		<select name="choiceYear">
			<option value="0">DATE</option>
			<option value="20200000">2020년</option>
			<option value="20210000">2021년</option>
			<option value="20220000">2022년</option>
			<option value="20230000">2023년</option>
		</select>
		<span id="searchBtn2" >DailyStatistics</span>
		</form>
		
		
		
	<div id="here">


		
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

		let searchBtn1 = document.querySelector("#searchBtn1"),
			searchRtn2 = document.querySelector("#searchBtn2");
			
			
			
			searchBtn1.addEventListener("click", function(){
				param = $("#searchBox1").serialize();
				console.log(param);
				$.ajax({
					url : "/monthlyStatistics",
					data : param,
					dataType : "html",
					method: "POST",
					success : function(data){
						
						$("#here").html(data);
					
					}
				});
			});
			
			
			searchBtn2.addEventListener("click", function(){
				param = $("#searchBox2").serialize();
				$.ajax({
					url : "/dailyStatistics1",
					data : param,
					dataType : "html",
					method: "POST",
					success : function(data){
						
						$("#here").html(data);
					
					}
				});
			});




</script>


</body>

</html>
