	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/css/bootstrapcss/nomalize.css">
    <link rel="stylesheet" href="/css/bootstrapcss/bootstrap.min.css">

    <link rel="stylesheet" href="/css/styles.css">

    <link rel="shortcut icon" href="https://hotel.cloud/wp-content/uploads/2019/10/favicon.png">
    <!-- JavaScript -->
    <script src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>

    <!-- CSS -->
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css"/>
    <!-- Default theme -->
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/default.min.css"/>
    <!-- Semantic UI theme -->
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/semantic.min.css"/>
    <!-- Bootstrap theme -->
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/bootstrap.min.css"/>
	
	<!--글씨체 링크 한글-->
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link
		href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
	
	<!--글씨체 링크 영어-->
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link
		href="https://fonts.googleapis.com/css2?family=Playfair+Display&display=swap" rel="stylesheet">
		
	<title> H.U.G HOTEL 제주</title>
	<style>
        .content{
            background-color:#72a5d3;
            width:80%;
            /* height:600px; */
            margin:auto;
        }
        .innerOuter{
            border:1px solid lightgray;
            width:80%;
            margin:auto;
            padding:5% 15%;
            background:white
        }
        .innerBox{
            position: relative;
            padding: 27px 30px;
            margin-top : 56px;
            
            background:#72a5d3;
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
			<div class="content">
                <br><br>
                <div class="innerOuter">
                    <h2>회원정보수정</h2>
                    <br>
        
                    <form id="myinfo" onsubmit="handleSubmit(this)">
                        <div class="form-group">
                            <label for="persanl_name">아이디(이메일) :</label>
                            <input type="text" class="form-control" id="persanl_name"  value="${member.memberEmail}" readonly>
                            <br>
                            
                            <label for="persnal_password">비밀번호:</label>
                            <input type="password" class="form-control" id="inputPassword" name="memberPassword" value="">
        					<div class="check_font" id="passwordCheck" ></div> <br> 
        					
        				
        					<div id="inputPassword2-div" style="display: none;">
								<label for="inputPassword2">비밀번호 확인</label>							
								<input type="password" class="form-control" id="inputPassword2"	placeholder="PasswordCheck" >
								<div class="check_font" id="passwordCheck2"></div> <br>		
							</div>
							
        					
                            <label for="persnal_name">이름 :</label>
                            <input type="text" class="form-control" id="persnal_name" name="memberName" value="${member.memberName}"><br>
                            
                            <label for="user_nick"> &nbsp; *닉네임 : </label>
                            <input type="text" class="form-control" id="user_nick" name="memberNick" value="${member.memberNick}"><br>
                            
                            <label for="persnal_phone"> &nbsp; Phone :</label>
                            <input type="tel" class="form-control" id="persnal_phone"  name="memberPhone" value="${member.memberPhone}"><br>
                            
                            <label for="selectBox"> &nbsp; 마케팅 수신 동의 : </label>
                            <select class="form-control" name='memberAgree' id='selectBox' >
                            <%-- ${(param.category == "title") ? "selected" : "" --%>
				            	<option ${(member.memberAgree == 'chk') ? 'selected' : ''} value="chk">동의함</option>
				            	<option ${(member.memberAgree == 'chk') ? '' : 'selected'}>동의하지 않음</option>
                        	</select>                             
                                                        
                        </div>
                        <br>
                        <div class="btns" align="center">
                            <input type="hidden" id="oriPasswordCheck" name="oriPassword" value="no">
                            <button id="submit" class="btn btn-primary">수정하기</button>
                           
                        </div>
                        <div class="innerBox">                            
                                <h2>회원탈퇴</h2>
                                <p>파라다이스시티 회원탈퇴는 하단 ‘회원 탈퇴신청’ 버튼을 클릭하시면 탈퇴가 이루어집니다. <br />탈퇴 후 해당 아이디와 회원 정보는 삭제처리 됩니다.</p>
                                <button type="button" class="btn btn-danger" data-backdrop="static" data-toggle="modal" data-target="#deleteForm" id="memberDeleteBtn">회원탈퇴</button>
                        </div>
                    </form>
                    
        
                </div>
                <br><br>
            </div>
        
            <!-- 회원탈퇴 버튼 클릭시 보여질 Modal -->
            <div class="modal" id="deleteForm">
                <div class="modal-dialog">
                    <div class="modal-content">
                    
                        <!-- Modal Header -->
                        <div class="modal-header">
                        <h4 class="modal-title">회원탈퇴</h4>
                        <button type="button" class="close" data-dismiss="modal" style="margin-top: -25px;">&times;</button>
                        </div>
                        
                        <!-- Modal body -->
                        <div class="modal-body" align="left">                        
                            <div style="font-size: 15px;margin-bottom: 10px;">
                                                       탈퇴 후 복구가 불가능합니다. 정말로 탈퇴 하시겠습니까?
                            </div>
        
                            <form id="deleteInfo" onsubmit="handleDelete(this)">                             	   
                                <input type="password" class="form-control" name="memberPassword"  id="memberPasswordDelete"   required placeholder="비밀번호  입력">
        						<br>
        						<div class="text-center">
                                <button type="submit" class="btn btn-danger">탈퇴하기</button>
                                </div>
                            </form>
        
                        </div>
                        
                    </div>
                </div>
            </div>
            
            
                        
            
 <!-- 사용중인 비밀번호 확인 -->
  <div class="modal fade" id="oriPasswordConfirm" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <form  method="post" id="oriPasswordConfirm_frm" >
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">×</button>
          <h4 class="modal-title">사용중인 비밀번호 확인</h4>
        </div>
        <div class="modal-body">
          <p>
            <input type="password" id="oriPassword" name="oriPassword" class="form-control" placeholder="기존 사용중인 비밀번호 입력">
          </p>
           <br>
           <div class="check_font" id="oriPassword-text" style="color:red"></div>           
         
        </div>
        <div class="modal-footer text-center">
          <button type="button" class="btn btn-primary"  id="oriPasswordConfirmBtn" onclick="oriPasswordConfirmSubmit(this)">확인</button>
          <button type="button" class="btn btn-default" data-dismiss="modal" id="oriPasswordCloseBtn">닫기</button>
        </div>
      </div>
      </form>
      
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
<!-- <script src="js/header.js"></script>
<script src="js/index.js"></script> -->

<script>
    $(document).ready(function() {
        // 비동기 통신을 위해 form submit 이벤트 제거
        $('form').bind('submit', function(e) { e.preventDefault();});
        
    	
		$("#inputPassword").keyup(function() {
			if(passwordCheck()==true){
				$("#inputPassword2-div").show();
				passwordCompare();
				$("#oriPasswordCheck").val("no");
			}else{
				$("#inputPassword2-div").val("");
				$("#inputPassword2-div").hide();
			}		
		});
		
		$("#inputPassword2").keyup(function() {
			passwordCompare();
		});
		
		$("#memberDeleteBtn").click(function(){
			//비밀번호 입력 초기화
			$("#memberPasswordDelete").val("");	
		});
			
		
		
    })
    
   		var autoHypenPhone = function(str) {
		str = str.replace(/[^0-9]/g, '');
		var tmp = '';
		if (str.length < 4) {
			return str;
		} else if (str.length < 7) {
			tmp += str.substr(0, 3);
			tmp += '-';
			tmp += str.substr(3);
			return tmp;
		} else if (str.length < 11) {
			tmp += str.substr(0, 3);
			tmp += '-';
			tmp += str.substr(3, 3);
			tmp += '-';
			tmp += str.substr(6);
			return tmp;
		} else {
			tmp += str.substr(0, 3);
			tmp += '-';
			tmp += str.substr(3, 4);
			tmp += '-';
			tmp += str.substr(7);
			return tmp;
		}
		return str;
	}
	var phoneNum = document.getElementById('inputPhone');
	phoneNum.onkeyup = function() {
		this.value = autoHypenPhone(this.value);
	}
    
    
    function handleSubmit(e) {
    	
    	 var inputPassword=$("#inputPassword").val();
    	 
    	 //패스워드를 입력 했을 시
    	 if($.trim(inputPassword)!=""){
    		
    		  //비밀번호 체크
    		 if(passwordCheck()==false){
    			 alert("올바른 형식의 비밀번호를 입력해 주세요.");	
    			 $("#inputPassword").focus();
    			 return;
    		 }
    		 
    		//비밀번호 비교 체크
    		 if(passwordCompare()==false){
    			 alert("비밀번호와 비밀번호 확인이 일치하지 않습니다.");	
    			 $("#inputPassword2").focus();
    			 return;
    		 } 
    		 
    		    		
    		var oriPasswordCheck=$("#oriPasswordCheck").val();
    		
    		//기존 사용중인 비밀번호 확인
    		if(oriPasswordCheck=="no"){   
    			//초기화
    			$("#oriPassword-text").text("");    
    	        $("#oriPassword").val("");
    	        
    	        
    			$("#oriPasswordConfirm").modal({backdrop:'static'});	    			
    			 return;
    		}    		    		 
    		
    	 }
    	 
    
    	
        var data = {}
        // form 데이터 배열로 받아와 key,value 로 객체 생성
        $('#myinfo').serializeArray().map(function(info) {
            Object.assign(data, {[info.name] : info.value})
        });

        $.ajax({
            url: '/memberUpdate',
            method: 'POST',
            data: data,
            success: function(r) {
                alertify.alert('수정 성공', '회원 정보가 성공적으로 수정되었습니다.', function() { location.href="/myPage"});
            },
            error: function() {
                alertify.alert('수정 실패', '오류가 생겨 회원 정보 수정이 실패하였습니다.<br>지속적으로 오류시 관리자에게 문의해주세요.');
            }
        })
    }

    function handleDelete() {    	
    	var memberPasswordDelete=$("#memberPasswordDelete").val();
    	
        $.ajax({
            url: '/memberDelete',
            method: 'POST',
            data:{ 
           		'memberPasswordDelete':memberPasswordDelete        
            },
            success: function() {
                alertify.alert('탈퇴 성공', '정상적으로 회원 탈퇴 되었습니다.<br>이용해주셔서 감사합니다.', function(){ location.href="/logout" });
            },
            error: function() {
                alertify.alert('탈퇴 실패', '비밀번호가 일치하지 않습니다.');
            }
        })
    }
    
    
    //사용중인 비밀번호 체크
    function oriPasswordConfirmSubmit(e){
    	$("#oriPassword-text").text("");    
        var oriPassword=$("#oriPassword").val();
        
        
        if($.trim(oriPassword)==""){
        	$("#oriPassword-text").text("비밀번호를 입력해 주세요.");    
        	$("#oriPassword").focus();
        	return;
        }
        
        $.ajax({
            url: '/oriPasswordConfirm',
            method: 'POST',
            data: {'oriPassword':oriPassword},
            success: function(r) {
                alertify.alert('비밀번호 확인', '비밀번호가 확인 되었습니다. 수정하기를 다시 클릭해 주시길 바랍니다.', function() { 
                	$("#oriPasswordCheck").val(oriPassword);
                	$("#oriPasswordCloseBtn").click();
            	});
            },
            error: function() {
                alertify.alert('비밀번호 불일치', '<span style="color:red">비밀번호가 일치하지 않습니다.</span>', function(){
                	
                	$(".ajs-button").click(function(){
                		console.log("비밀번호가 일치하지 않습니다.");
                        $("#oriPasswordCheck").val("no");
                        $("#oriPassword").val("");            			              		
                	});
                	                
                });
	   
            }
        })
    	
    }
    
    
   //비밀번호 체크
   function passwordCheck(){
		var pw = $("#inputPassword").val();
		var num = pw.search(/[0-9]/g);
		var eng = pw.search(/[a-z]/ig);
		var spe = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
		isPassword = false;
		if(pw == "") {
			$("#passwordCheck").text("");				
		} else if(pw.length < 8) {
			$("#passwordCheck").text("8자리 이상으로 입력해주세요.");
			$("#passwordCheck").css("color", "red");
			
		} else if(pw.search(/\s/) != -1) {
			$("#passwordCheck").text("비밀번호는 공백 없이 입력해주세요.");
			$("#passwordCheck").css("color", "red");
			
		} else if(num < 0 || eng < 0 || spe < 0 ) {
			$("#passwordCheck").text("영문/숫자/특수문자를 혼합해주세요.");
			$("#passwordCheck").css("color", "red");
			
		} else {
			$("#passwordCheck").text("사용가능한 비밀번호입니다.");
			$("#passwordCheck").css("color", "blue");
			isPassword=true;
		}		
		return isPassword;		
   }
   
   //비밀번호 비교
   function passwordCompare(){
		var isPassword = false;
		var pw1=$("#inputPassword").val();
		var pw2=$("#inputPassword2").val();
		
		if(pw1==pw2){
			$("#passwordCheck2").text("비밀번호가 일치합니다.");
			$("#passwordCheck2").css("color", "blue");
			isPassword = true;
		}else{
			$("#passwordCheck2").text("비밀번호가 일치하지 않습니다.");
			$("#passwordCheck2").css("color", "red");
		}
		return isPassword
   }
   
   
</script>
</body>

</html>
