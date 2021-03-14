// 메인

// carousel 
$('.carousel').carousel({ interval: 3000 });
//$(document).ready(function(){
//	$(".carousel").carousel({
//		items:1,
//		loop:true,
//		autoplay:true,
//		autoplayTimeout:4000,
//		autoplayHoverPause:true
//	});
//});

//weather api
const getJSON = function(url, callback) {
    const xhr = new XMLHttpRequest();
    xhr.open('GET', url, true);
    xhr.responseType = 'json';
    xhr.onload = function() {
        const status = xhr.status;
        if (status === 200) {
            callback(null, xhr.response);
        } else {
            callback(status, xhr.response);
        }
    };
    xhr.send();
};

getJSON('http://api.openweathermap.org/data/2.5/weather?q=jeju&appid=2100fea84428cca1d6bd854b2fdfb3ab&units=metric',
    function(err, data) {
        //null 값이 아니면 err
        if (err !== null) {
            alert('sorry...' + err);
        } else {
            loadWeather(data);
        }
    });

function loadWeather(data) {
    let location = document.querySelector('.location');
    let currentTime = document.querySelector('.current-time');
    let currentTemp = document.querySelector('.current-temp');
    let feelsLike = document.querySelector('.feels-like');
    let minTemp = document.querySelector('.min-temp');
    let maxTemp = document.querySelector('.max-temp');
    let icon = document.querySelector('.icon');
    let weatherIcon = data.weather[0].icon;

    let date = new Date();
    let month = date.getMonth() + 1;
    let day = date.getDate();
    let hours = date.getHours();
    let minutes = date.getMinutes();

    location.append(data.name);
    currentTemp.append(`${data.main.temp}⁰`);
    feelsLike.append(`${data.main.feels_like}⁰`);
    maxTemp.append(`최고:${data.main.temp_max}⁰`);
    minTemp.append(`최저:${data.main.temp_min}⁰`);
    icon.innerHTML = `<img src = 'http://openweathermap.org/img/wn/${weatherIcon}.png'>`;

    currentTime.append(`${month}월 ${day}일 ${hours}:${minutes}`);
}

//객실,다이닝 js
var swiper = new Swiper('.swiper-container', {
    slidesPerView: 1,
    spaceBetween: 30,
    loop: true,
    pagination: {
        el: '.swiper-pagination',
        clickable: true,
    },
    navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
    },
});

//부대시설 js
var commonJs_gjb = {};
this.commonJs_gjb = commonJs_gjb;
var ANIMATION_EASING = 'easeOutExpo';

// $(document).ready(function(){
// })

$(window).on('load', function() {
    commonJs_gjb.setHalfContMouseOver($('.halfCont'));
})

commonJs_gjb.setHalfContMouseOver = function(halfConfEl) {
    var cssScript = {
        mouseOver: {
            'transition': 'width 0.7s',
            '-webkit-transition': 'width 0.7s',
            '-moz-transition': 'width 0.7s',
            '-ms-transition': 'width 0.7s',
            '-o-transition': 'width 0.7s',
        }
    }

    halfConfEl.each(function(idx) {
        $(this).children('li').css(cssScript.mouseOver).on('mouseover', function() {
            $(this).addClass('on').css('width', 700).siblings('li').removeClass('on').css('width', '');
        })
    })

}
