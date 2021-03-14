/**
 * 
 */
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
   mapOption = {
         center: new kakao.maps.LatLng(33.24567259306393, 126.40962704289082), // 지도의 중심좌표
         level: 3 // 지도의 확대 레벨
     };

// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
var map = new kakao.maps.Map(mapContainer, mapOption);


// 지도에 마커를 표시합니다 
var marker = new kakao.maps.Marker({
    map: map, 
    position: new kakao.maps.LatLng(33.24567259306393, 126.40962704289082)
});

// 커스텀 오버레이에 표시할 컨텐츠 입니다
// 커스텀 오버레이는 아래와 같이 사용자가 자유롭게 컨텐츠를 구성하고 이벤트를 제어할 수 있기 때문에
// 별도의 이벤트 메소드를 제공하지 않습니다 
var content = '<div class="wrap">' + 
            '    <div class="info">' + 
            '        <div class="title">' + 
            '            H.U.G HOTEL in jeju' + 
            '            <div class="close" onclick="closeOverlay()" title="닫기"></div>' + 
            '        </div>' + 
            '        <div class="body">' + 
            '            <div class="img">' +
            '                <img src="img/hah_img/H.U.Glogo.jpg" width="73" height="70">' +
            '           </div>' + 
            '            <div class="desc">' + 
            '                <div class="ellipsis">제주특별자치도 서귀포시 중문관광로 </div>' + 
            '                <div class="jibun ellipsis">(우) 63300 (지번) 21길 21</div>' + 
            '                <div><a href="https://www.kakaocorp.com/main" target="_blank" class="link">홈페이지</a></div>' + 
            '            </div>' + 
            '        </div>' + 
            '    </div>' +    
            '</div>';

// 마커 위에 커스텀오버레이를 표시합니다
// 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
var overlay = new kakao.maps.CustomOverlay({
    content: content,
    map: map,
    position: marker.getPosition()       
});

// 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
kakao.maps.event.addListener(marker, 'click', function() {
    overlay.setMap(map);
});

// 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
function closeOverlay() {
    overlay.setMap(null);     
}




//층별 안내 엘레베이터

	$(document).ready(function() {
    var elevator = $('.elevator');
    var floors = $('.floor');
    var b2 = $('#b2');
    var people = $('.people');
    var runner = $('#runner');

   	people.css({
        top: b2.position().top + 1520,
        left: b2.position().left + 840
    });
    elevator.css({
        top: b2.position().top + 1520,
        left: b2.position().left + 481
    });


    elevator.hover(function() {
        $(this).addClass('yellowgreen');
    }, function() {
        $(this).removeClass('yellowgreen');
    });
    elevator.click(function(event) {
        $('div:animated').stop()
        $('div:animated').fadeOut('fast');
        $('div:animated').fadeIn('fast');
        $('div:animated').animate({
            param1: value1,
            param2: value2
        }, speed)
    });
    floors.bind({
        mouseenter: function() {
            $(this).addClass('brown')
        },
        mouseleave: function() {
            $(this).removeClass('brown')
        },
        click: function() {
            floors.removeClass('clickbrown')
            $(this).addClass('clickbrown')
        }
    });
    floors.each(function() {
        var pos = $(this).position();
        $(this).click(function() {
            if ($(this).attr('id') === 'runner') {
                return;
            };
            elevator.delay(500).animate({
                top: pos.top + 1520
            }, 1000);
            runner.animate({
                left: '-=150px'
            }, 500);
            runner.animate({
                top: pos.top + 1520,
                left: pos.left + 570
            }, 1000);
            runner.animate({
                left: '+=300px'
            }, 500);
        });
    });	
});

/* */

let 
b2 = document.querySelector('#b2'),
b1 = document.querySelector('#b1'),
f1 = document.querySelector('#f1'),
f2 = document.querySelector('#f2'),
f4 = document.querySelector('#f4'),
f6 = document.querySelector('#f6'),
f7 = document.querySelector('#f7'),
f9 = document.querySelector('#f9'),
ib2 = document.querySelector('#info-b2'),
ib1 = document.querySelector('#info-b1'),
if1 = document.querySelector('#info-f1'),
if2 = document.querySelector('#info-f2'),
if4 = document.querySelector('#info-f4'),
if6 = document.querySelector('#info-f6'),
if7 = document.querySelector('#info-f7'),
if9 = document.querySelector('#info-f9');

b2.addEventListener("click", function(){
	ib2.style.color = "black";
	ib1.style.color = "white";
	if1.style.color = "white";
	if2.style.color = "white";
	if4.style.color = "white";
	if6.style.color = "white";
	if7.style.color = "white";
	if9.style.color = "white";
});
b1.addEventListener("click", function(){
	ib2.style.color = "white";
	ib1.style.color = "black";
	if1.style.color = "white";
	if2.style.color = "white";
	if4.style.color = "white";
	if6.style.color = "white";
	if7.style.color = "white";
	if9.style.color = "white";
});
f1.addEventListener("click", function(){
	ib2.style.color = "white";
	ib1.style.color = "white";
	if1.style.color = "black";
	if2.style.color = "white";
	if4.style.color = "white";
	if6.style.color = "white";
	if7.style.color = "white";
	if9.style.color = "white";
});
f2.addEventListener("click", function(){
	ib2.style.color = "white";
	ib1.style.color = "white";
	if1.style.color = "white";
	if2.style.color = "black";
	if4.style.color = "white";
	if6.style.color = "white";
	if7.style.color = "white";
	if9.style.color = "white";
});
f4.addEventListener("click", function(){
	ib2.style.color = "white";
	ib1.style.color = "white";
	if1.style.color = "white";
	if2.style.color = "white";
	if4.style.color = "black";
	if6.style.color = "white";
	if7.style.color = "white";
	if9.style.color = "white";
});
f6.addEventListener("click", function(){
	ib2.style.color = "white";
	ib1.style.color = "white";
	if1.style.color = "white";
	if2.style.color = "white";
	if4.style.color = "white";
	if6.style.color = "black";
	if7.style.color = "white";
	if9.style.color = "white";
});
f7.addEventListener("click", function(){
	ib2.style.color = "white";
	ib1.style.color = "white";
	if1.style.color = "white";
	if2.style.color = "white";
	if4.style.color = "white";
	if6.style.color = "white";
	if7.style.color = "black";
	if9.style.color = "white";
});
f9.addEventListener("click", function(){
	ib2.style.color = "white";
	ib1.style.color = "white";
	if1.style.color = "white";
	if2.style.color = "white";
	if4.style.color = "white";
	if6.style.color = "white";
	if7.style.color = "white";
	if9.style.color = "black";
});

/* } else {
	$(document).ready(function() {
    var elevator = $('.elevator');
    var floors = $('.floor');
    var f1 = $('#f1');
    var people = $('.people');
    var runner = $('#runner');
    people.css({
        top: f1.position().top + 1448,
        left: f1.position().left + 792
    });
    elevator.css({
        top: f1.position().top + 1448,
        left: f1.position().left + 469
    });
    elevator.hover(function() {
        $(this).addClass('yellowgreen');
    }, function() {
        $(this).removeClass('yellowgreen');
    });
    elevator.click(function(event) {
        $('div:animated').stop()
        $('div:animated').fadeOut('fast');
        $('div:animated').fadeIn('fast');
        $('div:animated').animate({
            param1: value1,
            param2: value2
        }, speed)
    });
    floors.bind({
        mouseenter: function() {
            $(this).addClass('brown')
        },
        mouseleave: function() {
            $(this).removeClass('brown')
        },
        click: function() {
            floors.removeClass('clickbrown')
            $(this).addClass('clickbrown')
        }
    });
    floors.each(function() {
        var pos = $(this).position();
        $(this).click(function() {
            if ($(this).attr('id') === 'runner') {
                return;
            };
            elevator.delay(500).animate({
                top: pos.top + 1448
            }, 1000);
            runner.animate({
                left: '-=150px'
            }, 500);
            runner.animate({
                top: pos.top + 1448,
                left: pos.left + 550
            }, 1000);
            runner.animate({
                left: '+=300px'
            }, 500);
        });
    });
});
} */