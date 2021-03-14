<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    
    <title>관리자 공지사항 등록</title>
    
    <script>
	    function getID(id){
			return document.getElementById(id);
		}
		
		var notice = function(){
			
			var adminBtnBack    = getID("adminBtnBack");
			var adminBtninsertR = getID("adminBtninsertR");
			
			if (adminBtnBack != null) {
				adminBtnBack.onclick = function(){
					var frm = document.frm_notice;
					frm.action = "/adminNoticeMain";
					frm.submit();
				}
			}
			
			if (adminBtninsertR != null) {
				adminBtninsertR.onclick = function(){
					var frm = document.frm_notice;
					frm.action = "/adminNoticeInsertR";
					frm.submit();
				}
			}	    
	    
			
			
			
		}
	   	
    </script>
  	<style>
		.header a {
			text-decoration: none;
		}
	</style> 
</head>
<body>
    <div class="wrap">
        <!--header-->
        <jsp:include page="../common/header.jsp"/>
        <!--header end-->
        
        <!--section start-->
        <section>     
	<%-- ─────────────────────────────────── 공지사항 설명  부분 ─────────────────────────────────── --%> 
            <div id='admin_notice'>     
                <div class="container">  
                    <dl class="dl-horizontal non"> 
                        <dt>공지사항 등록</dt><br><br>
                        <hr class='style-five'>
                    </dl> 
                    
	<%-- ─────────────────────────────────── 공지사항  부분 ─────────────────────────────────── --%> 
	                 <form name='frm_notice' method='post'>
		                <table id='detail_Top'>        
		                    <tr id='detail_1'>         
		                        <td width='100px'><input type="text" id='input1' value='제목' readonly class="form-control"></td>
		                        <td width='500px'><input type="text" name='title' id='input2' class="form-control"></td>                        
		                    </tr>      
		                    <tr id='detail2'>
		                        <td width='1200px' height='500px' colspan="3">
		                            <textarea name="contents" id="contents" ></textarea>
		                            
		                        </td>
		                    </tr>     
		                </table>   
                                 
	<%-- ─────────────────────────────────── 비밀글  부분 ─────────────────────────────────── --%> 
	               
	                    <div class='secret_check'>
	                        <label for="secret">비공개</label>
	                        <input type="checkbox" name='pub' id='pub' value='1'>
	                    </div>
	<%-- ─────────────────────────────────── 목록  부분 ─────────────────────────────────── --%> 
		                <span id='adminback'>
		                    <input type="button" id='adminBtnBack' value='목록' class="form-control">
		                    <input type="button" id='adminBtninsertR' value='등록' class="form-control">
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
        $('#contents').summernote({            
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

<script>notice()</script>

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="js/header.js"></script>

</body>
</html>