$l = $('.left')
$r = $('.right')

$l.mouseenter(function() {
  $('.start').addClass('left-is-hovered');
}).mouseleave(function() {
  $('.start').removeClass('left-is-hovered');
});

$r.mouseenter(function() {
  $('.start').addClass('right-is-hovered');
}).mouseleave(function() {
  $('.start').removeClass('right-is-hovered');
});