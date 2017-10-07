// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//= require jquery3
//= require popper
//= require bootstrap-sprockets
//= require rails-ujs
//= require jquery.dotdotdot.min
//= require turbolinks
//= require_tree .

$(document).on("turbolinks:load", function(){
 $(".posts-list .post-content").dotdotdot({
  ellipsis  : '...',
  wrap    : 'word',
  fallbackToLetter: true,
  after   : null,
  watch   : true,
  /*  Optionally set a max-height, can be a number or function.*/
  height    : 220,
  tolerance : 0,
  callback  : function( isTruncated, orgContent ) {},
  lastCharacter : {
    remove    : [ ' ', ',', ';', '.', '!', '?' ],

      /*  Don't add an ellipsis if this array contains
      the last character of the truncated text. */
      noEllipsis  : []
    }
  });

 $(".categories-list .category-description").dotdotdot({
  ellipsis  : '...',
  wrap    : 'word',
  fallbackToLetter: true,
  after   : null,
  watch   : true,
  /*  Optionally set a max-height, can be a number or function.*/
  height    : 220,
  tolerance : 0,
  callback  : function( isTruncated, orgContent ) {},
  lastCharacter : {
    remove    : [ ' ', ',', ';', '.', '!', '?' ],

      /*  Don't add an ellipsis if this array contains
      the last character of the truncated text. */
      noEllipsis  : []
    }
  });

});