<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>faqRoom Page</title>
</head>
<body>
<div id='faqmain'>
	<!-- 객실 메뉴 -->
	<%-- ─────────────────────────────────── form태그 부분 ─────────────────────────────────── --%>              
	<form name='frm_faqmain' id='frm_faqmain' method='post' >
		<div>
        	<span id='span'>Total: <span id='total'>${page.totListSize }</span></span>
          	<input type='hidden' name='menu' value="${param.menu }">
          	<input type='hidden' name='nowPage' id='nowPage' value="${(param.nowPage == null)? 1 : param.nowPage}">
        	<input type='hidden' name='id' value="${param.id}">
        	<input type='hidden' name='totalPage' value='${param.totalPage }'>
      	</div>
      	<div>
			<select class="form-control" name='selectBox' id='selectBox' >
	           	<option ${(page.menu == "total")? "selected":"" } value='total'>전체</option>
	           	<option ${(page.menu == "question")? "selected":"" } value='question'>질문</option>
	           	<option ${(page.menu == "answer")? "selected":"" } value='answer'>답변</option>               
     		</select>
  
        	<input type="text" id='text'class="form-control" name='findStr' value="${param.findStr }">            
			<input type="button" id='btnFind3' class="form-control" value='Search'><br>
		</div>   
	</form>
	
	<%-- ──────────────────── 객실  ──────────────────── --%>				   				   		
	<div class="panel-group" id="accordion" >                                                
		<div class="panel panel-default">			
		 	<c:forEach var="index" begin="0" end="${fn:length(list)-1}">	 		               		
		 			                    			
	   		<div class="panel-heading" id='cover'>
	       		<h4 class="panel-title">

					<a data-toggle="collapse" data-parent="#accordion" href="#collapseOne${list[index].id }" class='arrowControl' id='faqQuestion'>			       							       
		            	<div onclick='faqClick(${numberList[index]})'>
			            	<span><img src="img/kjh_img/Q.PNG"></span><span id='span1'>${list[index].category }</span>
							<span id='span2'>${list[index].question }</span>
					 	  	<input type='hidden' id='faqId' name='faqId' value="${list[index].id }">

							<span id='arrow'>
								<span id='span3'><img class='before'  name='before' id='before' src="img/kjh_img/allowTop.PNG"></span>
								<span id='span4'><img class='before2' style="display: none;" name='after' src="img/kjh_img/allowBottom.PNG"></span>
							</span>
						</div>
					</a>
				</h4>
			</div>			                     	 
			<div id='collapseOne${list[index].id }' class="panel-collapse collapse ">
				<div class="panel-body" id='faqAnswer'>
	           		${list[index].answer }		           	
				</div>
			</div>
							
		</c:forEach>					                       
		</div>	
	</div>

	<%-- ─────────────────────────────────── 페이징 부분 ─────────────────────────────────── --%>
		<ul class="pagination" id="user_pagination">
        <li><a class="${(page.startPage > 1)? '' : 'btnHide' }" id="btnPrev" onclick="guideGoPage3(${page.startPage-1})">«</a></li>

      	<c:forEach var="i" begin="${page.startPage }" end="${page.endPage }">
        	<li class="${(param.nowPage == i)? 'active':'' }"><a id="btnCenter" onclick="guideGoPage3(${i})">${i }</a></li>
        </c:forEach>

       	<li><a class="${(page.endPage < page.totPage)? '' : 'btnHide' }" id="btnNext" onclick="guideGoPage3(${page.endPage+1})">»</a></li>             
    </ul>

</div>

<script>
	var faqClick = function(id){
	    var beforeimg = document.querySelectorAll(".before");
	    var beforeimg2 = document.querySelectorAll(".before2");
	   	if (beforeimg[id].src != beforeimg2[id].src) {
	   		for (var i = 0; i < beforeimg.length; i++) {
		    	beforeimg[i].src = "img/kjh_img/allowTop.PNG";
			}
		}
						    
	    if (beforeimg[id].src == beforeimg2[id].src) {
		    beforeimg[id].src = "img/kjh_img/allowTop.PNG";
		} else {
			beforeimg[id].src = "img/kjh_img/allowBottom.PNG";
		}
	}
	
</script>

<script>faq()</script>

</body>
</html>