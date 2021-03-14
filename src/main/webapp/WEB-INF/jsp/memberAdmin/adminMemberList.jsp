<%@ page language="java" contentType="text/html; charset=UTF-8"	
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
 	<title>회원관리</title>

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
	
	
	<link href="css/adminMember/adminMember.css" rel="stylesheet">    			
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
         	
                <dl class="dl-horizontal non"> 
                   <dt>회원관리</dt><br><br>     
                </dl>        
	
	
				<!-- 컨트롤  map 데이터 에는 list, page 값이 존재 map.page 또는 map 을 생략하고 page 로 데이터를 가져 올수 있음 -->                        
				<!-- 검색 폼 --> 
                <form name='frm1' id='frm_notice' method='post'  >
                    <div>
                        <span id='span'>Total: <span id='total'>${map.page.totListSize }</span></span>    
                        <input type='hidden' name='nowPage' id="nowPage" value="${(param.nowPage == null)? 1 : param.nowPage}">
                    </div>
                    <div>
                        <select class="form-control" name='selectBox' id='selectBox' >
							<option value="total" ${ (empty param.selectBox) or ( param.selectBox eq  'total')  ? 'selected':'' }> 전체</option>
				            <option value="memberEmail" ${param.selectBox eq  'memberEmail' ? 'selected':'' }>아이디(이메일)</option>
				            <option value="memberName" ${param.selectBox eq  'memberName' ? 'selected':'' }>이름</option>
				            <option value="memberNick" ${param.selectBox eq  'memberNick' ? 'selected':'' }>닉네임</option>
				            <option value="memberPhone" ${param.selectBox eq  'memberPhone' ? 'selected':'' } >전화번호</option>
                        </select>                             
                        <input type="text" id='text'class="form-control" name='findStr' value="${param.findStr }">            
                        <input type="button" id="searchBtn" class="form-control" value='Search'><br>                      	                       
                    </div>                        
                </form>


			<!-- 회원 목록 출력 -->
             <div class="table-responsive">
             <table class="table table-hover">
              <thead>
               <tr>
                 <th class="text-center">No.</th>
                 <th class="text-center">아이디(이메일)</th>
                 <th class="text-center">이름</th>
                 <th class="text-center">닉네임</th>
                 <th class="text-center">전화번호</th>
                 <!-- <th class="text-center">마케팅 수신동의</th> -->
                 <!-- <th class="text-center">비밀번호변경일</th>    -->
                 <th class="text-center">회원가입일</th>    
                 <th class="text-center">회원등급상태</th>   
				                        
               </tr>
               </thead>  
               <tbody>              
               <c:forEach var='row' items='${map.list}'>
               			<tr class="text-center" onclick="getMemberInfo(this)"
               			data-no='${page.totListSize-(row.no-1)}'
               			data-memberNumber='${row.memberNumber}'
               			data-memberEmail='${row.memberEmail}'
               			data-memberGrade="${row.memberGrade eq 'GRADE_GENERAL' ? '일반':'VIP' }"
               			data-memberRegDate='<fmt:formatDate value="${row.memberRegDate}" pattern="yyyy-MM-dd"/>'
               			data-memberUnRegDate='<fmt:formatDate value="${row.memberUnRegDate}" pattern="yyyy-MM-dd"/>'
               			data-memberPwChangeDate='<fmt:formatDate value="${row.memberPwChangeDate}" pattern="yyyy-MM-dd"/>'
               			data-memberAgree="${row.memberAgree eq 'chk'? '동의':'동의 안함'}"
               			data-memberRole="${row.memberRole eq 'ROLE_ADMIN' ? '관리지(ROLE_ADMIN)':'일반(ROLE_REGURAL)'}"
               			data-memberName='${row.memberName}'
               			data-memberNick='${row.memberNick}'
               			data-memberPhone='${row.memberPhone}'


               			data-memberKey='${row.memberKey}'               			
               			style="cursor: pointer;">
               			 
	   						 <td>${page.totListSize-(row.no-1)}</td>
			                 <td>${row.memberEmail}</td>
			                 <td>${row.memberName}</td>
			                 <td>${row.memberNick}</td>
			                 <td>${row.memberPhone}</td>			               


			                 <%-- <td>${row.memberAgree eq 'chk'? '동의':''}</td>	 --%>
			                 <%-- <td><fmt:formatDate value="${row.memberPwChangeDate}" pattern="yyyy-MM-dd"/></td> --%>
			                 <td><fmt:formatDate value="${row.memberRegDate}" pattern="yyyy-MM-dd"/></td>
			                 <td id="memberGrade-${row.memberNumber}">${row.memberGrade eq 'GRADE_GENERAL' ? '일반':'VIP' }</td>			                 			                 
		                 </tr>               	          
	            </c:forEach>
	            
	            <c:if test="${page.totListSize eq 0 }">
	            	<tr class="text-center" >
	            		<td colspan="10">검색 결과가 없습니다.</td>
	            	</tr>
	            </c:if>
               </tbody>
               
             </table>
            </div>
            </div>

		<!-- 페이징 부분 -->
            <ul class="pagination text-center" id='pagination'>
             	<li><a class="${(page.startPage > 1)? '' : 'btnHide' }" id="btnPrev" onclick="movePage(1)"><i class="fa fa-angle-double-left"></i></a></li>
                <li><a class="${(page.startPage > 1)? '' : 'btnHide' }" id="btnPrev" onclick="movePage(${page.startPage-1})"><i class="fa fa-angle-left"></i></a></li>
              	<c:forEach var='i' begin='${page.startPage }' end='${page.endPage }'>
                	<li class="${(param.nowPage == i) or (empty param.nowPage and i==1 )? 'active':'' }"><a onclick="movePage(${i})">${i}</a></li>
                </c:forEach>
               	<li><a class="${(page.endPage < page.totPage)? '' : 'btnHide' }" id="btnNect" onclick="movePage(${page.endPage+1})"><i class="fa fa-angle-right"></i></a></li>     
                <li><a class="${(page.endPage < page.totPage)? '' : 'btnHide' }" id="btnNect" onclick="movePage(${page.totPage})"><i class="fa fa-angle-double-right"></i></a></li>     
            </ul>

         </div>
        </section>
        <!--section end-->
               
                
        <!--footer start-->
        <jsp:include page="../common/footer.jsp"/>
        <!--footer end-->
    </div>
  
  
 <!-- Modal -->
  <div class="modal fade" id="getMemberInfoModal" role="dialog" >
    <div class="modal-dialog" >
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" onclick="btnReload()">×</button>
          <h4 class="modal-title text-center">회원정보</h4>
        </div>
        <div class="modal-body ">
         <div class="table-responsive">
          <table class="table table-hover ">
           <tbody class="text-center ">
           		<tr><td class="modal-th">no</td> 				<td id="modal-no" class="text-center"></td></tr> 
				<tr><td class="modal-th">회원번호</td> <td id="modal-memberNumber"></td></tr> 
				<tr><td class="modal-th">회원아이디(이메일)</td> 			<td id="modal-memberEmail"></td></tr> 
				<tr><td class="modal-th">회원등급상태</td>		
				<td id="modal-memberGrade">
					<select class="form-control text-center" style="text-align-last:center" onchange="memberGradeUpdate(this)">
						<option value="GRADE_GENERAL">일반</option>
						<option value="GRADE_MEMBERSHIP">VIP</option>
					</select>
				</td>				
				</tr> 
				
				
				
				<tr><td class="modal-th">등록일</td>		<td id="modal-memberRegDate"></td></tr> 
				<!-- <tr><td class="modal-th">memberUnRegDate</td>	<td id="modal-memberUnRegDate"></td></tr>  -->
				<tr><td class="modal-th">비밀번호변경일</td>		<td id="modal-memberPwChangeDate"></td></tr> 
				<tr><td class="modal-th">마케팅 수신동의</td>		<td id="modal-memberAgree"></td></tr> 
				<tr><td class="modal-th">회원권한</td>			<td id="modal-memberRole"></td></tr> 
				<tr><td class="modal-th">이름</td>			<td id="modal-memberName"></td></tr> 
				<tr><td class="modal-th">닉네임</td>			<td id="modal-memberNick"></td></tr> 
				<tr><td class="modal-th">전화번호</td>		<td id="modal-memberPhone"></td></tr> 
 			
 
				<!-- <tr><td class="modal-th">키(memberKey)</td>			<td id="modal-memberKey"></td></tr> --> 					         		        		           		           		           		           		           			
           </tbody>
          </table>
          </div>
          
        </div>
        <div class="modal-footer" style="text-align:center;">        	
          <button type="button" class="btn btn-default" data-dismiss="modal" onclick="btnReload();">닫기</button>
        </div>
      </div>
      
    </div>
  </div>

  
    
<script src="https://code.jquery.com/jquery-3.5.1.js" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="js/bootstrapjs/bootstrap.min.js"></script>
<script src="js/header.js"></script>

<script type="text/javascript">
$(function(){
	$("#searchBtn").click(function(){
		$("#nowPage").val(1);
		$('#frm_notice').submit();	
	});
	
})
function movePage(page){	
	$("#nowPage").val(page); //이동할 페이지 번호
	$('#frm_notice').submit();	
}


function memberGradeUpdate(e){
	
	var memberNumber=$.trim($("#modal-memberNumber").text());
	var memberEmail=$.trim($("#modal-memberEmail").text());
	var memberGrade=$(e).val();
	var memberGradeText=$(e).children("option:selected").text();
	
    $.ajax({
        url: '/memberGradeUpdate',
        method: 'POST',
        data: {
        	'memberEmail':memberEmail,
        	'memberGrade':memberGrade,        	
        },
        success: function(result) {
           console.dir(result);           
           if($.trim(result)=="success"){
               $("#memberGrade-"+memberNumber).text(memberGradeText);           
               alert(memberGradeText+"(으)로 업데이트 처리 하였습니다.");        	   
           }else{
        	   alert("회원등급상태 업데이트 처리 오류!");
           }
        },
        error: function(result) {
           console.dir(result);
        }
    });	

}

function getMemberInfo(e){

	$("#modal-no").text($(e).attr("data-no"));	
	$("#modal-memberNumber").text($(e).attr("data-memberNumber"));	
	$("#modal-memberEmail").text($(e).attr("data-memberEmail"));	

	
	var memberGrade=$(e).attr("data-memberGrade");
	if(memberGrade=="VIP"){
		$("#modal-memberGrade select").val("GRADE_MEMBERSHIP").prop("selected", true);
	}else{
		$("#modal-memberGrade select").val("GRADE_GENERAL").prop("selected", true);
	}
		
	$("#modal-memberRegDate").text($(e).attr("data-memberRegDate"));
	$("#modal-memberUnRegDate").text($(e).attr("data-memberUnRegDate"));
	$("#modal-memberPwChangeDate").text($(e).attr("data-memberPwChangeDate"));	
	$("#modal-memberAgree").text($(e).attr("data-memberAgree"));	
	$("#modal-memberRole").text($(e).attr("data-memberRole"));	
	$("#modal-memberEmail").text($(e).attr("data-memberEmail"));	
	$("#modal-memberName").text($(e).attr("data-memberName"));	
	$("#modal-memberNick").text($(e).attr("data-memberNick"));	
	$("#modal-memberPhone").text($(e).attr("data-memberPhone"));	
	

	
	$("#modal-memberKey").text($(e).attr("data-memberKey"));
	//bootstrap modal 에서 영역 밖을 선택시 backdrop옵션에 "static" 값을 같이 넘겨주면, 모달이 닫히는 것을 막아 준다.
	$("#getMemberInfoModal").modal({backdrop: 'static'});
	
	  
}

function btnReload(){
	location.reload();
}
</script>

     
</body>
</html>