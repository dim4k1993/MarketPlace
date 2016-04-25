var maxHeight = 0;
var $returnToTopEl = $('#return-to-top');
$(document).ready(function() {
  $('.callToActionCol').on('click', scrollPage);
});

$(".worksThumb").each(function(){
   if ($(this).height() > maxHeight) { maxHeight = $(this).height(); }
});

$(".worksThumb").height(maxHeight);

// ===== Scroll to Top ==== 
$(window).scroll(function() {
    if ($(this).scrollTop() >= 50) {        // If page is scrolled more than 50px
        $returnToTopEl.fadeIn(200);    // Fade in the arrow
    } else {
        $returnToTopEl.fadeOut(200);   // Else fade out the arrow
    }
});
$returnToTopEl.click(function() {      // When arrow is clicked
    $('body,html').animate({
        scrollTop : 0                       // Scroll to top of body
    }, 500);
});

// Function to scroll the page based on click events
function scrollPage(event) {
  var targetId = $(event.currentTarget).attr('data-targetId');
  var $targetEl = $("#" + targetId);
  $('html, body').animate({
    scrollTop: $targetEl.offset().top
  }, 900);
}