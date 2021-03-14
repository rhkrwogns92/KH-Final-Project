/**
 * 
 */
 let slides = document.querySelector('.slides');
slide = document.querySelectorAll('.slides li'),
    dot = document.querySelectorAll('.dot'),
    currentIdx = 0,
    slideCount = slide.length,
    slideWidth = 1120,
    slideMargin = 30,
    prevBtn = document.querySelector('.prev'),
    nextBtn = document.querySelector('.next');
console.log(dot[1]);


slides.style.width = (slideWidth + slideMargin) * slideCount - slideMargin + 'px';

function moveSlide(num) {
    slides.style.left = -num * 1150 + 'px';
    dot[num].className = 'dot on';
    console.log(num);
    if (num > 0 && num <= 3) {
        dot[num - 1].className = 'dot';
    }
    if (num == 0) {
        dot[3].className = 'dot';
    }
    if (num <= 2) {
        dot[num + 1].className = 'dot';
    }
    if (num == 3) {
        dot[0].className = 'dot';
    }
    currentIdx = num;
}
nextBtn.addEventListener('click', function() {
    if (currentIdx < slideCount - 1) {
        moveSlide(currentIdx + 1);
    } else {
        moveSlide(0);
    }
});
prevBtn.addEventListener('click', function() {
    if (currentIdx > 0) {
        moveSlide(currentIdx - 1);
    } else {
        moveSlide(slideCount - 1);
    }
});