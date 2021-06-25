import "jquery-bar-rating";

import $ from 'jquery';

const initStarRating = () => {
  $('#review_star').barrating({
    theme: 'css-stars'
  });
};

export { initStarRating };
