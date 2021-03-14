/**
 * 관리자 공지사항 JavaScript
 * 작성자: 곽재훈
 */

function getID(id) {
    return document.getElementById(id)
 } 
 
var notice = function(){
	
	var adminBtnFind = getID('adminBtnFind');
	var adminSelectBox 	 = getID('adminSelectBox');
	var adminBtnBack   = getID("adminBtnBack");
	var adminBtnUpdate = getID("adminBtnUpdate");
	var adminBtnDelete = getID("adminBtnDelete");
	var adminBtninsertR = getID("adminBtninsertR");
	var adminBtnModify = getID("adminBtnModify");
		
	if (adminBtnFind != null) {
		adminBtnFind.onclick = function(){
			var frm = document.frm_notice;
			
			if (adminSelectBox.value == "total") {	
				var selected = 'total';
				frm.menu.value = selected;						
				frm.action = "/adminNoticeMain";
				frm.submit();
				
			}else if (adminSelectBox.value == "contents") {
				var selected = 'contents';
				frm.menu.value = selected;
				frm.action = "/adminNoticeContents";
				frm.submit();
				
			}else if (adminSelectBox.value == "title") {
				var selected = 'title';
				frm.menu.value = selected;
				frm.action = "/adminNoticeTitle";
				frm.submit();				
			}											
		};
	};	
	
	if (adminBtnBack != null) {
		adminBtnBack.onclick = function(){
			var frm = document.frm_notice;
			frm.action = "/adminNoticeMain";
			frm.submit();
		}
	}
	
	if (adminBtnUpdate != null) {
		adminBtnUpdate.onclick = function(){
			var frm = document.frm_notice;
			frm.action = "/adminNoticeUpdate";
			frm.submit();
		}
	}
	
	if (adminBtnDelete != null) {
		adminBtnDelete.onclick = function(){
			var frm = document.frm_notice;
			alert("출발함~~");
			frm.action = "/adminNoticeDelete";
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
	
	if (adminBtnModify != null) {
		adminBtnModify.onclick = function(){
			var frm = document.frm_notice;
			frm.action = "/adminNoticeModify";
			frm.submit();
		}
	}
	
	
	
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
	frm.action = "/adminNoticeMain";
	frm.submit();
} 

notice.adminPreArticle = function(num){
	if (num > 0) {
		var frm = document.frm_notice;
		frm.nNo.value = num;
		frm.action = "/adminNoticeDetail";
		frm.submit();				
	}
}

notice.adminNextArticle = function(num){
	var totpage = "<c:out value='${param.totalPage }'/>"; 
	
	var frm = document.frm_notice;
	frm.nNo.value = num;
	frm.action = "adminNoticeDetail";
	frm.submit();
	
	<%--
	if (num <= totpage) {
		var frm = document.frm_notice;
		frm.nNo.value = num;
		frm.action = "adminNoticeDetail";
		frm.submit();
	}	
	--%>		
}