/**
 * 
 */
function getLoc() {
	/*var x = event.offsetX;
	var y = event.offsetY;
	alert("현재좌표는 :" + x + "/" + y);*/
	alert("확인하고 싶은 여행지는 빨간점을 클릭해서 정보를 확인하세요~ ");
}
$('area').mouseover(function(){
    var showId = $(this).attr('id');
    $(showId).show();
});

$('area').mouseout(function(){
    var hideId = $(this).attr('id');
    $(hideId).hide();
});
/* $(function(){
  $('.tourmap').maphilight();
}); */
//마우스오버 상자 내용, 링크, 위치 변경
function changePopupText(title, addr, x, y) {
  document.getElementById('popup_title').innerHTML = title;
  document.getElementById('popup_addr').innerHTML = addr;
  /* document.getElementById('popup_description').innerHTML = description; */
  /* document.getElementById('popup_addr').href = addr; */
  
  document.getElementById('popup').style.left = x + "px";
  document.getElementById('popup').style.top = y + "px";
  document.getElementById('popup').style.opacity = 1;
}

// 마우스오버 상자 내용, 링크, 위치 변경2
function changePopupText2(title, addr, x, y) {
  document.getElementById('popup_title').innerHTML = title;
  document.getElementById('popup_addr').innerHTML = addr;
  /* var description = '';
  if (price_before === price_after) {
    description = '&#8361; ' + price_before;
  } else {
    description = '<strike>&#8361; ' + price_before + '</strike><br/>&#8361; ' + price_after;
  }
  document.getElementById('popup_description').innerHTML = description; */
  /* document.getElementById('popup_addr').href = addr; */
  
  document.getElementById('popup').style.left = x + "px";
  document.getElementById('popup').style.top = y + "px";
  document.getElementById('popup').style.opacity = 1;
}

// 마우스오버 상자 숨기기
function hidePopup() {
  document.getElementById('popup').style.opacity = 0;
}

// 마우스오버 상자 보이기
function showPopup() {
  document.getElementById('popup').style.opacity = 1;
}
$(function(){
	$('img[usemap]').rwdImageMaps();
});