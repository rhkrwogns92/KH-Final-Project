/**
 * 공지사항 JavaScript
 * 작성자: 곽재훈
 */
  
@font-face{
  font-family:'NanumBarunGothic';
  src:url("../fonts/NanumBarunGothic.eot");
  src:local("☺"),url("../fonts/NanumBarunGothic.woff") format("woff");
}

section {font-family: "맑은 고딕","Malgun Gothic",  sans-serif; }  
  

function getID(id) {
    return document.getElementById(id)
 } 

var notice = function(){
			
	var btnFind = getID('btnFind');
	var selectBox = getID('selectBox');
	var btnBack = getID('btnBack');
			
	if (btnFind != null) {
		btnFind.onclick = function(){
			var frm = document.frm_notice;
			
			if (selectBox.value == "total") {	
				var selected = 'total';
				frm.nowPage.value = 1;
				frm.menu.value = selected;						
				frm.action = "/noticeMain";
				frm.submit();
				
			} else if (selectBox.value == "title") {
				var selected = 'title';
				frm.nowPage.value = 1;
				frm.menu.value = selected;
				frm.action = "/noticeTitle";
				frm.submit();						
			} else if (selectBox.value == "contents") {
				var selected = 'contents';
				frm.nowPage.value = 1;
				frm.menu.value = selected;
				frm.action = "/noticeContents";
				frm.submit();
				
			}													
		};
	};	
	
	if (btnBack != null) {
		btnBack.onclick = function(){
			var frm = document.frm_notice;
			alert(frm.menu.value)
			if (frm.menu.value == "total") {
				frm.action = "/noticeMain";
				frm.submit();
				
			} else if (frm.menu.value == "title") {
				frm.action = "/noticeTitle";
				frm.submit();
				
			} else if (frm.menu.value == "contents") {
				frm.action = "/noticeContents";
				frm.submit();
				
			}
		}
	}
	
};
			
notice.btnView = function(num,page){
	var frm = document.frm_notice;
	frm.nNo.value = num;			
	frm.totalPage.value = page;
	frm.action = "/noticeDetail";
	frm.submit();			
}

notice.goPage = function(page){			
	var frm = document.frm_notice;
	frm.nowPage.value = page;
	if (selectBox.value == "total") {
		frm.action = "/noticeMain";
		frm.submit();	
	}else if (selectBox.value == "title") {
		frm.action = "/noticeTitle";
		frm.submit();
		
	}else if (selectBox.value == "contents") {
		frm.action = "/noticeContents";
		frm.submit();
		
	}
}

notice.preArticle = function(num){
	if (num > 0) {
		var frm = document.frm_notice;
		frm.nNo.value = num;
		frm.action = "/noticeDetail";
		frm.submit();
	}
}

notice.nextArticle = function(num){
	var totpage = "<c:out value='${param.totalPage }'/>";			
	var frm = document.frm_notice;
	frm.nNo.value = num;
	frm.action = "/noticeDetail";
	frm.submit();
	
	<%--
	if (num <= totpage) {
		var frm = document.frm_notice;
		frm.nNo.value = num;
		frm.action = "/noticeDetail";
		frm.submit();
	}
	--%>		
}