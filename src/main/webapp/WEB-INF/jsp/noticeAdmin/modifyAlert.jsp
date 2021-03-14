<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 수정 결과</title>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
<script>
$(function(){
	$().ready(function () {                   
	    swal({
	       icon: "success",
	        title: "공지사항 게시글이",
	        text: "성공적으로 수정 되었습니다.",
	        button: "목록으로",
	    }) .then((value) => {
	       if(value) {
	          location.href ='/adminNoticeMain'
	       }
	    })                   
	});
});
</script>
</body>
</html>