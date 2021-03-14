<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrapcss/nomalize.css">
    <link rel="stylesheet" href="css/bootstrapcss/bootstrap.min.css">
	
	<!-- css, js 링크 연결 -->
    <link rel="stylesheet" href="css/styles.css">
	<link rel="stylesheet" href="css/NoticeFaq/faqmain.css">
	<script src="js/NoticeFaq/faq.js"></script>
	<link rel="shortcut icon" href="https://hotel.cloud/wp-content/uploads/2019/10/favicon.png">
	
    <!-- Bootstrap -->
    <link href="css/bootstrapcss/bootstrap.min.css" rel="stylesheet">    
    <link href="css/bootstrapcss/custom2.css" rel="stylesheet">
    
	<!--글씨체 링크 한글-->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">

    <!--글씨체 링크 영어-->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display&display=swap" rel="stylesheet">
			
    <!-- jQuery -->  	
  	<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
  	
 	 <style>
		.header a {
			text-decoration: none;			
		}
	</style>
	
    <title>FAQ</title>
    
</head>

<body>
    <div class="wrap">
        <!--header-->
        <jsp:include page="../common/header.jsp"/>
        <!--header end-->

        <!--section start-->
        <section>
         <div id='faqmain'>
            <div class="container"> 
            
	<%-- ─────────────────────────────────── 공지사항 설명 부분 ─────────────────────────────────── --%>            
                <dl class="dl-horizontal non"> 
                    <dt>FAQ</dt><br><br>
                    <dd>회원님들께서 자주 문의하는 질문과 답변입니다.</dd>                  
                </dl>
                
	<%-- ─────────────────────────────────── 메뉴 부분 ─────────────────────────────────── --%>
                <ul id='menu'>                 
                    <li><a href='#' id='btncago1' class='aclick'>전체</a></li>
                    <li><a href='#' id='btncago2' class='aclick'>이용안내</a></li>
                    <li><a href='#' id='btncago3' class='aclick'>객실</a></li>
                    <li><a href='#' id='btncago4' class='aclick'>다이닝</a></li>
                    <li><a href='#' id='btncago5' class='aclick'>부대시설</a></li>
                    <li><a href='#' id='btncago6' class='aclick'>결제</a></li>
                	<li><a href='#' id='btncago7' class='aclick'>기타</a></li>
				</ul>
                <hr class='style-five'>                    
                 <!-- faq메인 메뉴 -->  
	<%-- ─────────────────────────────────── ajax 적용 부분 ─────────────────────────────────── --%>                     
                <div id="here"></div>
                <div id='base'>메뉴를 선택해 주세요.</div>								
								 	
			</div>
		</div>
        </section>
        
        <!--section end-->
                
        <!--footer start-->
        <jsp:include page="../common/footer.jsp"/>
        <!--footer end-->        
                
    </div>
<script>faq()</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="js/bootstrapjs/bootstrap.min.js"></script>

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="js/bootstrapjs/bootstrap.min.js"></script>
<script src="js/header.js"></script>

</body>
</html>