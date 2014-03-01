'use strict';

var Games_x01 = function () {
  console.log('x01: start');

  var focusClass = 'focus';

  var dartsUi = window.dartsUi;

  var scoreIndex = 1;
  var scoreElements = $('.scores td');
  var totalScore = 301;
  var totalScoreElements = $('.scores-total-score td');

  for (var i = 1; i < scoreElements.length; i++) {
    $(scoreElements[i]).removeClass(focusClass).text(0);
  }

  $(scoreElements[scoreIndex]).addClass(focusClass);

  dartsUi.onHit(function (cellId, point, ratio) {
    // console.log(cellId + ' : ' + point + ' x ' + ratio + ' = ' + point * ratio);

    $(scoreElements[scoreIndex]).text(point * ratio);

    $(scoreElements[scoreIndex]).removeClass(focusClass);
    scoreIndex++;
    $(scoreElements[scoreIndex]).addClass(focusClass);

    totalScore -= point * ratio;
    $(totalScoreElements).text(totalScore);

    if (totalScore <= 0) {
      console.log('Clear!');
    }
  });
};
