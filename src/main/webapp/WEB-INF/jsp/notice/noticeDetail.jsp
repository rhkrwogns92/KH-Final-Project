<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="member"/>
</sec:authorize>

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
    <link rel="stylesheet" href="css/NoticeFaq/noticeDetail.css">
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
	<style>
		.header a {
			text-decoration: none;
		}
	</style>
	<style>
		@font-face{
		  font-family:'NanumBarunGothic';
		  src:url("../fonts/NanumBarunGothic.eot");
		  src:local("☺"),url("../fonts/NanumBarunGothic.woff") format("woff");
		}
		
		section {font-family: "맑은 고딕","Malgun Gothic",  sans-serif; }				
	</style>
	
	<script>
		
	
	    function getID(id) {
		    return document.getElementById(id)
		 } 
		 
		var notice = function(){
			
			var btnBack  = getID('btnBack');  		
			var input7   = getID('input7');
			var input4   = getID('input4');
			var textarea = getID('textarea');
    		    		
			/*--------------------------- 목록 클릭 시  ---------------------------*/
			if (btnBack != null) {
				btnBack.onclick = function(){
					var frm = document.frm_notice;
					if (frm.menu.value == "title") {
						frm.action = "/noticeTitle";
						frm.submit();
						
					} else if (frm.menu.value == "contents") {
						frm.action = "/noticeContents";
						frm.submit();
						
					} else {
						frm.action = "/noticeMain";
						frm.submit();
						
					}
				};			
			};  
			
			/*--------------------------- 댓글 등록 클릭 시  ---------------------------*/
			if (input7 != null) {
				input7.onclick = function(){
					var frm = document.frm_notice;
					var len1 = input4.value.length;
					var len2 = textarea.value.length;
					if (len1 < 1 || len2 < 1 || len1 != 4) {
						alert('암호와 text를 입력하세요.');
						
					} else {
						frm.action = "/noticeDetail_Rinsert";
						frm.submit();						
					}
				}
			}			

			
    	};
  	
    	/*--------------------------- 댓글 수정 클릭 시  ---------------------------*/
    	RbtnUpdate = function(num){
    		
    		var Rcontent = getID('Rcontent');
    		var Rupdate  = getID('Rupdate');
    		var rno = num;
    		
			var frm = document.frm_notice;
			if (Rupdate.value == '수정') {
				Rcontent.disabled = false;
				Rupdate.value = '저장';
				
			}else if (Rupdate.value == '저장') {
				let pwd = Number(prompt("수정된 내용을 저장 하시려면 작성한 암호를 입력해주세요."));
				frm.pwd.value = pwd;
				frm.rNo.value = num;
				Rupdate.value = '수정';
				frm.action = '/Rupdate';
				frm.submit();						
			}						    		
    		
    	}
		
		/*--------------------------- 댓글 삭제 클릭 시  ---------------------------*/
    	RbtnDelete = function(num){
    		var rno = num;
    		
    		<c:if test="${member.role == 'ROLE_REGURAL'}">
				var frm = document.frm_notice;
				let pwd = prompt("삭제하시려면 작성한 암호를 입력해주세요.");				
				frm.pwd.value = pwd;
				rNo.value = rno;
				frm.action = "/Rdelete";
				frm.submit();
			</c:if>
			
			<c:if test="${member.role == 'ROLE_ADMIN'}">
				var frm = document.frm_notice;
				rNo.value = rno;
				frm.action = "/adminRdelete";
				frm.submit();
			</c:if>
    	};
    	
		/*--------------------------- 이전글 클릭 시  ---------------------------*/
    	notice.preArticle = function(num){
			if (num > 0) {
				
				var frm = document.frm_notice;
				frm.nNo.value = num;
				frm.action = "/noticeDetail";
				frm.submit();				
			}
		}
		/*--------------------------- 다음글 클릭 시  ---------------------------*/		
    	notice.nextArticle = function(num){
			var totpage = "<c:out value='${param.totalPage }'/>";
			if (num != 0) {
				var frm = document.frm_notice;
				frm.nNo.value = num;
				frm.action = "/noticeDetail";
				frm.submit();				
			} else if (num == 0) {				
				$(this).css('pointer-events','none');
				$(this).css('cursor','default');
			}
			
		};
		/*--------------------------- 페이징  ---------------------------*/
		notice.goPage = function(page){			
			var frm = document.frm_notice;
			frm.nowPage.value = page;
			frm.action = "/noticeDetail";
			frm.submit();					
		};
			
		
    </script>
	
    <title>공지사항 상세페이지</title>
    
</head>
<body>
    <div class="wrap">
        <!--header-->
        <jsp:include page="../common/header.jsp"/>
        <!--header end-->
        
        <!--section start-->
        <section>
	<%-- ─────────────────────────────────── 공지사항 설명 부분 ─────────────────────────────────── --%> 
            <div id='notice_detail'>     
                <div class="container">            
                    <dl class="dl-horizontal non"> 
                        <dt>공지사항</dt><br><br>
                        <dd>HUG호텔의 다양한 소식을 전해드립니다.</dd>                  
                    </dl>    
                    
	<%-- ─────────────────────────────────── 공지사항  부분 ─────────────────────────────────── --%> 
                <table class="table" id='detail_Top'>        
                    <thead>
                        <tr id='detail_1'>
                          <th width='100px'>${vo.nNo }</th>
                          <th width='500px'>${vo.title }</th>
                          <th width='80px'>${vo.regdate }</th>                          
                        </tr>
                    </thead>
                        
                    <tr id='detail_2'>
                        <td  id='tdtd' width='1200px' height='500px' colspan="3">                            
                            ${vo.contents }                           
                        </td>
                    </tr>     
                </table>             
                       
	<%-- ─────────────────────────────────── 댓글 작성  부분 ─────────────────────────────────── --%> 
                <div id='div_1'>        
                    <div id='div_2'>
                        <div id='div_3'>
                        	<form id='frm_notice' name='frm_notice' method='post'>
                        		<input type='hidden' name='menu'      	 value="${param.menu }">
								<input type='hidden' name='nowPage'   	 value="${param.nowPage }">
								<input type='hidden' name='nNo' 	  	 value="${param.nNo}">
			                    <input type="hidden" name='findStr'   	 value="${param.findStr }"> 
			                    <input type='hidden' name='totalPage' 	 value='${param.totalPage }'>
			                    <input type='hidden' name='pwd'          value='${param.pwd }'>	
			                    <input type='hidden' name='rNo' id='rNo' value='${param.rNo }'>
			                    		              
			                    
	                            <table id='detail_Middle1'>				                    
	                                <tr>                                    
	                                    <td width='10px'><input type="text" id='input1' value='작성자' readonly class="form-control"></td>
	                                    <td><input type="text" id='input2' value='${member.nick }' name='memberNick' readonly class="form-control"></td>
	                                    <td><input id='input3' type="text" value="암호" readonly class="form-control"/></td>
	                                    <td><input id='input4' type="password" name='password' maxlength='4' onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" placeholder="4자리 숫자입력" class="form-control"/></td>
	                                    <td width="430px"></td>
	                                    <td><input id='input5' type="text" value="작성일" readonly class="form-control"/></td>
	                                    <td><input id='input6' type="text" name='regdate' value="${vo2.regdate }" readonly class="form-control"/></td>
	                                </tr> 
	                            </table>
							   
	                            <table id='detail_Middle2'>
	                                <tr>	                                	
	                                	<c:if test="${empty member.nick }">
		                                    <td><textarea id='textarea' rows="5" cols="128" readOnly style="resize: none;" placeholder="로그인시 댓글 작성 가능합니다."></textarea>&nbsp;&nbsp;&nbsp;</td>                                                
		                                    <td width='100px' style="background-color: white;"><div id='div1'><input id='input7' disabled type="button" value='등록'></div></td>
		                                </c:if>
		                                 
		                                <c:if test="${not empty member.nick }">
		                             		<td><textarea id='textarea' name='content' rows="5" cols="128" style="resize: none;" placeholder="정책 위반 댓글은 삭제될 수 있습니다."></textarea>&nbsp;&nbsp;&nbsp;</td>
		                                    <td width='100px'><div id='div1'><input id='input7' type="button" value='등록'></div></td>
		                                </c:if>
	                                </tr>
	                                <tr>                        
	                                    <td colspan="2"><div><br><hr class='style-six'></div></td>
	                                </tr>
	                                	                                	                                	                                            
		<%-- ──────────────────── 댓글 등록시 반복 ──────────────────── --%>									
	                                <c:forEach var='reply' items='${list }'>
	                               	<c:if test="${vo.nNo == reply.nNo }">
		                                <tr>
		                                    <td colspan='2'><input id='input8' type="text" readonly value="${reply.memberNick }"></td>
		                                </tr>
		                                <tr> 
		                                    <td colspan="2"><textarea id='Rcontent' name='Rcontent' rows="2" cols="125" disabled style="resize: none; margin-left: 70px; margin-right: 70px;">${reply.content }</textarea></td>
		                               </tr>
		                                <tr>
		                                    <td><input id='input9' type="text" readonly value="${reply.regdate }"></td>
		                                    <c:if test="${reply.memberNick == member.nick or member.role == 'ROLE_ADMIN'}">
			                                    <td>		            
			                                    	<c:if test="${member.role == 'ROLE_ADMIN' or member.role == 'ROLE_REGURAL' }">                        	
				                                        <span id='btnupdel'>
				                                        	
				                                            <span id='span2'>				                                            
				                                            	<input type="button" id='Rdelete' name='Rdelete' onclick="RbtnDelete(${reply.rNo})" value='삭제'>				                                            	
				                                            </span>				                                            
				                                            <c:if test="${member.role == 'ROLE_REGURAL' || reply.memberNick == member.nick }">	
				                                            	<span id='span1'>
				                                            		<input type="button" id='Rupdate' name='Rupdate' onclick="RbtnUpdate(${reply.rNo})" value='수정'>				                                            			
				                                            	</span>				                                            		
															</c:if>
																					                                            		
				                                        </span>
			                                       </c:if>
			                                    </td>
		                                    </c:if>                                   
		                                </tr>                                
		                                <tr>                        
		                                    <td colspan="2"><div><hr class='style-six'></div></td>
		                                </tr>                                   
									</c:if>									
									</c:forEach>
	                            </table>
							 </form>
                        </div>
                    </div>     
	<%-- ─────────────────────────────────── 페이징  부분 ─────────────────────────────────── --%> 
                    <div id=pcover>
	                    <ul class="pagination" id='user_pagination'>
			                <li><a class="${(page.startPage > 1)? '' : 'btnHide' }" id="btnPrev" onclick="notice.goPage(${page.startPage-1})">«</a></li>
			
			              	<c:forEach var='i' begin='${page.startPage }' end='${page.endPage }'>
			                	<li class="${(param.nowPage == i)? 'active':'' }"><a onclick="notice.goPage(${i})">${i }</a></li>
			                </c:forEach>
			    
			               	<li><a class="${(page.endPage < page.totPage)? '' : 'btnHide' }" id="btnNect" onclick="notice.goPage(${page.endPage+1})">»</a></li>             
			            </ul>
		            </div>
                </div>
                
	<%-- ─────────────────────────────────── 목록  부분 ─────────────────────────────────── --%> 
            
	                <span id='back'>
	                    <input type="button" id='btnBack' value='목록' class="form-control">	                  	                                     
	                </span>             
                
	<%-- ─────────────────────────────────── 이전글 다음글  부분 ─────────────────────────────────── --%> 
                <table class='table table-bordered' id='detail_Footer'>
					<tr class='footer_tr' height='40' onclick="notice.preArticle(${vo1.preNo})">
                        <th class='cursor' width='100px'>이전글</th>                        
                        <td class='footer_td' width='1000px'><input class='sContent' type="button" value='${vo1.preNo }&emsp;&emsp;${vo1.preTitle }'></td>
                        <td class='cursor' width='150px'>${vo1.preDate }</td>
                    </tr>
                    <tr class='footer_tr' height='40' onclick="notice.nextArticle(${vo1.nextNo})">
                        <th class='cursor'>다음글</th>                        
                        <td class='footer_td'><input class='sContent' id='nextend' type="button" value='${vo1.nextNo }&emsp;&emsp;${vo1.nextTitle }'></td>
                        <td class='cursor'>${vo1.nextDate }</td>
                    </tr>                  
                </table>
                </div>
            </div>
        </section>
        <!--section end-->

        
        <!--footer start-->
        <jsp:include page="../common/footer.jsp"/>
        <!--footer end-->

    </div>

<script>notice()</script>
   
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="js/bootstrapjs/bootstrap.min.js"></script>
<script src="js/header.js"></script>

</body>
</html>