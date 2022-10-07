$(document).ready(function(){
	var owl = $('.owl-carousel');
	owl.owlCarousel({
		items: 6,
		// items change number for slider display on desktop

		loop: true,
		margin: 10,
		autoplay: true,
		autoplayTimeout: 1000,
		autoplayHoverPause: true
	});
	owl.trigger('play.owl.autoplay', [1000]);
});
