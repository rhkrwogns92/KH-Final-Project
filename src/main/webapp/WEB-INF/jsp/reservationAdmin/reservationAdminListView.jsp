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
    <link rel="stylesheet" href="css/reservation/reservationAdminListView.css">
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
            <p>예약관리 및 예약취소</p>
        </h1>
        <form action="/reservationAdminSearch">
        <div class="searchArea">
        
            <input class="textArea" name="reservationNo" type="text" placeholder="예약번호를 입력해주세요">
            <input class="buttonArea" type="submit" value="검색">

        </div>
        </form>
        <c:if test="${empty list}">
		<h3>현재 예약 되어있는 테이블이 없습니다.</h3>
		</c:if>
		<c:if test="${!empty list}">  
        <c:forEach var="list" items="${list }">
        <div class="reservationInfo">    
            <table class="reservationWrap">
                <tr>
                    <th class="lengthUp">예약번호</th>
                    <th class="lengthSort">닉네임</th>
                    <th class="lengthSort">예약날짜</th>
                    <th class="lengthSort">룸</th>
                    <th class="lengthSort">성인/어린이</th>
                    <th class="lengthUp">회원등급</th>
                    <th class="lengthSort">가격</th>
                </tr>
                <tr>
                    <td class="lengthUp">${list.reservationNo }</td>
                    <td class="lengthSort">${list.memberName }</td>
                    <td class="lengthSort">${list.checkIn } - ${list.checkOut }</td>
                    <td class="lengthSort">${list.guestRoomName }${list.guestRoomNo }호</td>
                    <td class="lengthSort">${list.adult }명/${list.child }명</td>
                    <td class="lengthUp">${list.memberGrade }</td>
                    <td class="lengthSort"><fmt:formatNumber value="${list.totalPrice }" pattern="#,###"/>원</td>
                </tr>
            </table>
            <div class="buttonWrap">
                <a href="/reservationAdminDelete?reservationNo=${list.reservationNo }">취소</a>
            </div>
        </div>
        </c:forEach>
        </c:if> 
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
