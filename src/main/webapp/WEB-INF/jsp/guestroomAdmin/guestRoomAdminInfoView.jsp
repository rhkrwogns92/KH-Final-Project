<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
    <link rel="stylesheet" href="css/guestroom/guestRoomAdminInfoView.css">
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
            <p>${guestRoomName } GuestRoom Info List</p>
        </h1>
        
        <a href="/guestRoomInfoAddView?guestRoomName=${guestRoomName }">추가</a>
	
		<c:if test="${empty list}">
		<h3>테이블이 비어있어요 추가해주세요</h3>
		</c:if>
		<c:if test="${!empty list}">
        <c:forEach items="${list }" var="list">
        <div class="reservationInfo"">    
            <table class="reservationWrap">
                <tr>
                    <th class="lengthSort">객실 번호</th>
                    <th class="lengthSort">전망</th>
                    <th class="lengthSort">면적</th>
                    <th class="lengthSort">기준 인원</th>
                    <th class="lengthSort">침대 유형</th>
                    <th class="lengthSort">성인 금액</th>
                    <th class="lengthSort">어린이 금액</th>
                    <th class="lengthSort">가격</th>
                    <th  rowspan="2" class="guestRoomButton"><a href="/guestRoomInfoDelete?guestRoomNo=${list.guestRoomNo }&guestRoomName=${list.guestRoomName}">삭제</a></th>
                </tr>
                <tr>
                    <td class="lengthSort">${list.guestRoomNo }호</td>
                    <td class="lengthSort">${list.guestRoomView }</td>
                    <td class="lengthSort">${list.guestRoomArea }m²</td>
                    <td class="lengthSort">${list.standardPersonnel }명</td>
                    <td class="lengthSort">${list.guestRoomBedType }</td>
                    <td class="lengthSort"><fmt:formatNumber value="${list.adultPrice }" pattern="#,###"/>원</td>
                    <td class="lengthSort"><fmt:formatNumber value="${list.childPrice }" pattern="#,###"/>원</td>
                    <td class="lengthSort"><fmt:formatNumber value="${list.guestRoomPrice }" pattern="#,###"/>원</td>
                </tr>
            </table> 
        </div>
		</c:forEach>
		</c:if>
		<a href="/guestRoomAdminView">목록</a>
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
