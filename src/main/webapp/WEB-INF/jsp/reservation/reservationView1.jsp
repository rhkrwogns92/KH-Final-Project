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
    
    <link rel="stylesheet" href="//code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" />

    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="css/reservation/reservationView1.css">
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
                <span class="buttonType on">1</span>ㅡ
                <span class="buttonType">2</span>ㅡ
                <span class="buttonType">3</span>
                <br>
                <p>날짜, 객실, 인원을 선택하세요.</p>
            </h1>
    
            <div class="buttonChoice">
                <form action="/reservationSearchProcess" method="post" id="jypRequest1">
                    <div class="checkInOut">
                        <input name="checkIn" style="margin-right: 10px;" class="checkIn" type="text" id="datepicker1" value="CheckIn">
                        <input name="checkOut" class="checkOut" type="text" id="datepicker2"  value ="CheckOut">
                    </div>
            
                



                    <!-- <p >날짜선택</p> -->
                    <div class="choiceType">
                    <select class="choiceType2" name="guestRoomName" id="guestRoomName"> 
                        <option class="choiceFirst">객실선택</option>
                        <c:forEach var="grList" items="${grList }">
                        <option value="${grList.guestRoomName }">${grList.guestRoomName }</option>
                        </c:forEach>
                  
                    </select>
                    <select class="choiceType2" name="adult" id="adult">
                        <option class="choiceFirst" value="0">인원선택(성인)</option>
                        <option value="1">성인 1</option>
                        <option value="2">성인 2</option>
                        <option value="3">성인 3</option>
                        <option value="4">성인 4</option>
                        <option value="5">성인 5</option>
                    </select>
                    <select class="choiceType2" name="child" id="chile">
                        <option class="choiceFirst" value="0">인원선택(어린이)</option>
                        <option value="1">어린이 1</option>
                        <option value="2">어린이 2</option>
                        <option value="3">어린이 3</option>
                        <option value="4">어린이 4</option>
                        <option value="5">어린이 5</option>
                    </select>
                    <button form="jypRequest1" id="reservationSearch" class="choiceType3" type="submit">검색</button>
                    </div>
                </form>
            </div>
        
			<c:if test="${!empty reservationInfo.guestRoomRemaining }">
            <div class="innerBox">
                <div class="roomWrap">
                    <div class="imageBox">
                        <img src="../../../img/${guestRoom.guestRoomImage1 }" alt="이미지입니다">
                    </div>
                    <div class="roomContent">
                        <p class="roomTitle">
                            <span>${guestRoom.guestRoomName }</span>
                            <!-- 모던하면서도 아늑한 인테리어의 스탠다드 룸 -->
                        </p>
                        <div class="roomInfo">
                            <p>
                                <span>면적</span>
                                ${guestRoom.guestRoomArea }m²
                            </p>
                            <p>
                                <span>인원</span>
                                성인 ${guestRoom.standardPersonnel }인 기준
                            </p>
                            <p>
                                <span>베드타입</span>
                                ${guestRoom.guestRoomBedType }
                            </p>
                            <p>
                                <span>전망</span>
                                ${guestRoom.guestRoomView }
                            </p>
                        </div>
                    </div>
                    <div class="roomPrice">
                        <p>1박</p>
                        <span><fmt:formatNumber value="${guestRoom.guestRoomPrice }" pattern="#,###"/> 원 ~</span>
                        <button type="submit" form="jypRequest"> 예약하기</button>
                    </div>
                </div>
                <div class="searchRoomDetailInfo">
                    <form action="/reservationView2" method="post" id="jypRequest">
                    <ul><h1>남은 객실<span> 선택한 객실 : <input readonly class="ipButtonType" type="text" value="${guestRoom.guestRoomName }" name="guestRoomName"></span></h1>
                        <li>${reservationInfo.guestRoomRemaining }  개  (원하시는 객실 호수를 선택해주세요.)</li>
                    	<table class="guestRoomNumberTable">
                    		<tr>
                    			<th class="jypSizeUp">객실번호</th>
                    			<th class="jypSizeUp">베드타입</th>
                    			<th class="jypSizeUp">전망</th>
                    		</tr>
                    		<c:forEach var="list" items="${guestRoomInfoList }">
                    		<tr>
                    			<td class="jypSizeUp"><input name="guestRoomNo" type="checkbox" value="${list.guestRoomNo }" onclick='checkOnlyOne(this)' />${list.guestRoomNo }호</td>
                    			<td class="jypSizeUp">${list.guestRoomBedType }</td>
                    			<td class="jypSizeUp">${list.guestRoomView }</td>
                    		</tr>
                    		</c:forEach>
                    	</table>
                    </ul>
                    <ul><h1>숙박기간에 대한 추가금<span> 선택한 날짜 : <input name="checkIn" readonly class="ipButtonType" type="text" value="${reservationInfo.checkIn }">-<input name="checkOut" readonly class="ipButtonType" type="text" value="${reservationInfo.checkOut }"></span></h1>
                        <li><input style="width: 22px;" name="lodgmentPeriod" readonly type="text" value="${reservationInfo.lodgmentPeriod }" />박</li> 
                        <c:forEach begin="1" end="${reservationInfo.lodgmentPeriod }">
                        <li>+ <fmt:formatNumber value="${guestRoom.guestRoomPrice }" pattern="#,###"/></li>
                        </c:forEach>
                    </ul>
                    <ul><h1>기준인원을 넘어선 추가금<span> 선택한 인원 : 성인 <input name="adult" readonly class="ipButtonType1" type="text" value="${reservationInfo.adult }">, 어린이 <input name="child" readonly class="ipButtonType1" type="text" value="${reservationInfo.child }"></span></h1>
      					<li>기준인원 ${guestRoom.standardPersonnel }  명</li>
                        <c:forEach begin="1" end="${reservationInfo.adultCount }">
                        <li>성인 + <fmt:formatNumber value="${guestRoom.adultPrice }" pattern="#,###"/></li>
                        </c:forEach>
                        <c:forEach begin="1" end="${reservationInfo.childCount }">
                        <li>어린이 + <fmt:formatNumber value="${guestRoom.childPrice }" pattern="#,###"/></li>
                        </c:forEach>
                    </ul>
                    <ul><h1>회원등급에 의한 할인<span> 회원등급 : <input name="memberGrade" readonly class="ipButtonType3" type="text" value="${reservationInfo.memberGrade }"></span></h1>
                        <li>${reservationInfo.discount }</li>
                        <c:if test="${!empty beforeTotalPrice}">
                        <li>할인전 금액 : <fmt:formatNumber value="${beforeTotalPrice }" pattern="#,###"/></li>
                        </c:if>
                    </ul>
                    <ul><h1>총 금액</h1><input style="display: none;" name="totalPrice" type="text" value="${reservationInfo.totalPrice }" />
                        <li><input readonly class="ipButtonType2" type="text" value="<fmt:formatNumber value="${reservationInfo.totalPrice }" pattern="#,###"/>"> 원</li>
                        
                    </ul>
                    </form>
                </div>
            </div>
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


<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>

<script>
    $.datepicker.setDefaults({
        dateFormat: 'yymmdd',
        prevText: '이전 달',
        nextText: '다음 달',
        monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
        monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
        dayNames: ['일', '월', '화', '수', '목', '금', '토'],
        dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
        dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
        showMonthAfterYear: true,
        yearSuffix: '년'
    });

    $(function() {
        $("#datepicker1").datepicker();
        $("#datepicker2").datepicker();
    });

</script>
<script>
function checkOnlyOne(element) {
  
  const checkboxes 
      = document.getElementsByName("guestRoomNo");
  
  checkboxes.forEach((cb) => {
    cb.checked = false;
  })
  
  element.checked = true;
}
</script>

</body>

</html>
