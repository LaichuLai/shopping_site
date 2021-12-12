import bulmaCarousel from 'bulma-carousel';

document.addEventListener('turbolinks:load', ()=> {
  bulmaCarousel.attach('#carousel', {
    slidesToScroll: 1,
    slidesToShow: 3,
    infinite: true
  });
});
