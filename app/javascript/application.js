import "@hotwired/turbo-rails";
import "./controllers";
import "bootstrap";

document.addEventListener("turbo:load", function () {
  // Initialize the carousel
  const carousel = $("#cardCarousel");
  carousel.carousel({ interval: false });

  // Add click event listeners to the carousel controls
  const carouselControls = document.querySelectorAll(
    "#cardCarousel .carousel-control-prev, #cardCarousel .carousel-control-next"
  );

  carouselControls.forEach(function (control) {
    control.addEventListener("click", function (event) {
      event.preventDefault();
      event.stopPropagation();

      if (event.target.closest(".carousel-control-prev")) {
        carousel.carousel("prev");
      } else if (event.target.closest(".carousel-control-next")) {
        carousel.carousel("next");
      }
    });
  });
});

document.addEventListener('turbo:load', () => {
  $(function() {
    $('a[data-method="delete"]').on('ajax:success', function(event) {
      $(this).closest('div').fadeOut();
    });
  });
});
