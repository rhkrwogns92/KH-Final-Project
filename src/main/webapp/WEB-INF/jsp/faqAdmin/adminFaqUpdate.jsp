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
	<link rel="stylesheet" href="css/NoticeFaq/adminNoticeFaq.css">
	<script src="js/NoticeFaq/faq.js"></script>
	
	<link rel="shortcut icon" href="https://hotel.cloud/wp-content/uploads/2019/10/favicon.png">
	
    <!-- Bootstrap -->
    <link href="css/bootstrapcss/bootstrap.min.css" rel="stylesheet">    
    <link href="css/bootstrapcss/custom2.css" rel="stylesheet">
    <script src="js/bootstrapjs/bootstrap.min.js"></script>
	
	<!--글씨체 링크 한글-->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">

    <!--글씨체 링크 영어-->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display&display=swap" rel="stylesheet">

	<style>
		@font-face{
		  font-family:'NanumBarunGothic';
		  src:url("../fonts/NanumBarunGothic.eot");
		  src:local("☺"),url("../fonts/NanumBarunGothic.woff") format("woff");
		}
		
		section {font-family: "맑은 고딕","Malgun Gothic",  sans-serif; }				
	</style>
	
    <!-- 썸머노트 에디터 -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
	
	<script>
    	$(function(){
			var cdata = '<c:out value="${vo.category}"/>';
			$("#select").val(cdata).prop("selected", true);			
    	});	
    </script>
    <style>
		.header a {
			text-decoration: none;
		}
	</style>
    <title>FAQ 수정</title>
    
</head>
<body>
    <div class="wrap">
        <!--header-->
        <jsp:include page="../common/header.jsp"/>
        <!--header end-->
        
        <!--section start-->
        <section>     
            <!-------------------------------------- 공지사항 설명 부분 -------------------------------------->
            <div id='admin_notice'>     
                <div class="container">  
                    <dl class="dl-horizontal non"> 
                        <dt>FAQ 수정</dt><br><br>
                        <hr class='style-five'>
                    </dl> 
                    
                <!-------------------------------------- 공지사항 부분 -------------------------------------->
                <form name='frm_faqmain' method='post'>
                	<input type='hidden' name='menu' value="${param.menu }">
	          		<input type='hidden' name='nowPage' id='nowPage' value="${(param.nowPage == null)? 1 : param.nowPage}">
	        		<input type='hidden' name='totalPage' value='${param.totalPage }'>			
					<input type='hidden' name='id' value="${param.id }">	
                
	                <table id='detail_Top'>        
	                    <tr id='detail_3'>
	                        <td><input type="text" readonly class="form-control" id='category' value='카테고리'></td>
	                        <td id='drop_box'>
	                            <select class="form-control" name='category' id='select'>
	                                <option>선택</option>
	                                <option>이용안내</option>
	                                <option>객실</option>
	                                <option>다이닝</option>
	                                <option>부대시설</option>
	                                <option>결제</option>
	                                <option>기타</option>
	                            </select>
	                        </td>
	
	                    </tr>
	                    <tr id='detail_1'>       
	                        <td width='100px'><input type="text" id='input1' value='제목' readonly class="form-control"></td>
	                        <td width='500px'><input type="text" id='input2' name='question' value="${vo.question }" class="form-control"></td>                        
	                    </tr>      
	                    <tr id='detail_2'>
	                        <td width='1200px' height='500px' colspan="3">
	                            <textarea name="answer" id="answer" >${vo.answer }</textarea>	                            
	                        </td>
	                    </tr>     
	                </table>                    
	               
	                <!-------------------------------------- 목록 부분 -------------------------------------->
	                <span id='faqinsert_adminback'>
	                    <input type="button" id='fBtnBack' value='목록' class="form-control">
	                    <input type="button" id='fBtnUpdate' value='수정' class="form-control">
	                    <input type="button" id='fBtnDelete' value='삭제' class="form-control">
	                </span>
                </form>
                </div>
            </div>
        </section>
        <!--section end-->
        
        <!--footer start-->
        <jsp:include page="../common/footer.jsp"/>
        <!--footer end-->

    </div>

    <script>
        $('#answer').summernote({            
          tabsize: 10,
          height: 360,
          width: 940,
          toolbar: [
              // [groupName, [list of button]]
              ['fontname', ['fontname']],
              ['fontsize', ['fontsize']],
              ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
              ['color', ['forecolor','color']],
            //   ['table', ['table']],
              ['para', ['ul', 'ol', 'paragraph']],
              ['height', ['height']],
              ['insert',['picture','link','video']],
              ['view', ['fullscreen', 'help']]
            ],
          fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋음체','바탕체'],
          fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72']  		
        });
      
  </script>    
   
<script>faq()</script>
   
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="js/header.js"></script>

</body>
</html>