<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <link rel="stylesheet" href="css/Travel/foodView.css">
	

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
            <div class="foodView-section">
                <div class="foodView-title">
                    <span class="name">맛집</span>
                    <p>
	                    여행의 즐거움 중 빼놓을 수 없는 것은 단연 음식입니다. <br>
						제주도는 흑돼지, 말요리 그리고 해산물 등 다양한 음식문화를 접할 수 있습니다. <br>
						제주도의 전통 음식부터 줄을 서서 기다리는 최고 인기의 음식까지 모두 안내해드립니다.
                    </p>
                </div>
                
                <div class="foodwrap">
                	<c:forEach var="vo" items="${food}">
                	<div class="food1">
                		<a href="/foodDetailView?frName=${vo.frName} ">
	                		<img alt="" src="../../../img/${vo.frImage1}">
	                		<div class="food-info">
		                		<h3>${vo.frName }</h3>
		                		<h5>${vo.frAddress }</h5>
		                		<h5>${vo.frPhone }</h5>
		                	</div>	
	                	</a>
                	</div>
                	</c:forEach>
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
<script src="js/Travel/foodView.js"></script>
</body>



</html>
