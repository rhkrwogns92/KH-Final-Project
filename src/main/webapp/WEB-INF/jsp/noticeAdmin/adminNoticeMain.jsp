<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
	<link rel="stylesheet" href="css/NoticeFaq/notice.css">

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
			
			var adminBtnFind = getID('adminBtnFind');
			var adminSelectBox 	 = getID('adminSelectBox');
				
			if (adminBtnFind != null) {
				adminBtnFind.onclick = function(){
					var frm = document.frm_notice;
					
					if (adminSelectBox.value == "total") {	
						var selected = 'total';
						frm.nowPage.value = 1;
						frm.menu.value = selected;						
						frm.action = "/adminNoticeMain";
						frm.submit();
						
					} else if (adminSelectBox.value == "title") {
						var selected = 'title';
						frm.nowPage.value = 1;
						frm.menu.value = selected;
						frm.action = "/adminNoticeTitle";
						frm.submit();
						
					} else if (adminSelectBox.value == "contents") {
						var selected = 'contents';
						frm.nowPage.value = 1;
						frm.menu.value = selected;
						frm.action = "/adminNoticeContents";
						frm.submit();
						
					}		
											
				};
			};	
		};
			
		notice.btnInsert = function() {
		   	var frm = document.frm_notice;
		   	frm.action = "/adminNoticeInsert";
		  	frm.submit();
		}
		
		notice.adminbtnView = function(num,page){
			var frm = document.frm_notice;
			frm.nNo.value = num;	
			frm.totalPage.value = page;
			frm.action = "/adminNoticeDetail";
			frm.submit();			
		}
		
		notice.goPage = function(page){			
			var frm = document.frm_notice;
			frm.nowPage.value = page;
			if (adminSelectBox.value == "total") {
				frm.action = "/adminNoticeMain";
				frm.submit();				
			}else if (adminSelectBox.value == "title") {
				frm.action = "/adminNoticeTitle";
				frm.submit();
				
			}else if (adminSelectBox.value == "contents") {
				frm.action = "/adminNoticeContents";
				frm.submit();
				
			}
		}
	</script>

   	<title>공지사항</title>
</head>

<body>
    <div class="wrap">
        <!--header-->
        <jsp:include page="../common/header.jsp"/>
        <!--header end-->


        <!--section start-->
        <section>
         <div id='notice'>
            <div class="container">
	<%-- ─────────────────────────────────── 공지사항 설명 부분 ─────────────────────────────────── --%> 
                <dl class="dl-horizontal non"> 
                   <dt id='admindt'>관리자 공지사항</dt><br><br>
                   <dd id='admindd'>HUG호텔의 다양한 소식을 전해드립니다.</dd>   
                </dl>        
                
	<%-- ─────────────────────────────────── form태그 부분 ─────────────────────────────────── --%> 
                <form name='frm_notice' id='frm_notice' method='post' >
                    <div>
                        <span id='span'>Total: <span id='total'>${page.totListSize }</span></span>
                        <input type='hidden' name='menu' value="${param.menu }">
                        <input type='hidden' name='nowPage' value="${(param.nowPage == null)? 1 : param.nowPage}">
                      	<input type='hidden' name='nNo' value="${param.nNo}">
                      	<input type='hidden' name='totalPage' value='${param.totalPage }'>
                    </div>
                    <div>
                        <select class="form-control" name='adminSelectBox' id='adminSelectBox' >
	                        <option ${(page.menu == "total")? "selected":"" } value='total'>전체</option>
	                        <option ${(page.menu == "title")? "selected":"" } value='title'>제목</option>
	                        <option ${(page.menu == "contents")? "selected":"" } value='contents'>내용</option>               
                        </select>
                
                        <input type="text" id='text'class="form-control" name='findStr' value="${param.findStr }">            
                        <input type="button" id='adminBtnFind' class="form-control" value='Search'><br>
                      	                       
                    </div>                        
                </form>

	<%-- ─────────────────────────────────── 공지사항 내용 부분 ─────────────────────────────────── --%> 
             <div>
             <table class="table table-hover">
              <thead>
               <tr>
                 <th>No.</th>
                 <th>제 목</th>
                 <th>등록일</th>
                 <th>조회수</th>
               </tr>
               </thead>               
               <c:forEach var='vo' items='${list }'>
	               <tr class='view' onclick="notice.adminbtnView(${vo.nNo },${page.totListSize })">
	                 <td>${vo.nNo }</td>
	                 <c:if test="${vo.pub eq 1 }">
	                 	<td><span id='secret'>[★비공개]&ensp;</span>${vo.title }</td>
	                 </c:if>
	                 <c:if test="${vo.pub eq 0 }">
	                 	<td>${vo.title }</td>
	                 </c:if>
	                 <td>${vo.regdate }</td>
	                 <td>${vo.hit }</td>
	               </tr>
	           </c:forEach>
               
             </table>
            </div>
            </div>
            
	<%-- ─────────────────────────────────── 글쓰기 부분 ─────────────────────────────────── --%>           
            <div id='writer'>
                <div></div>                
                <div>
                    <input type="button" class="form-control" onclick="notice.btnInsert()" value='글쓰기'/>
                </div>
            </div>

	<%-- ─────────────────────────────────── 페이징 부분 ─────────────────────────────────── --%>   
            <ul class="pagination" id='pagination'>
                <li><a class="${(page.startPage > 1)? '' : 'btnHide' }" id="btnPrev" onclick="notice.goPage(${page.startPage-1})">«</a></li>

              	<c:forEach var='i' begin='${page.startPage }' end='${page.endPage }'>
                	<li class="${(param.nowPage == i)? 'active':'' }"><a onclick="notice.goPage(${i})">${i }</a></li>
                </c:forEach>
    
               	<li><a class="${(page.endPage < page.totPage)? '' : 'btnHide' }" id="btnNect" onclick="notice.goPage(${page.endPage+1})">»</a></li>             
            </ul>

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