//= require rails-ujs
//= require_tree .
//= require chosen

function chosen_init() {
  $(".chosen-select").chosen().change(
    function(){
      var user = $('option:selected',this);
      var user_url = user.attr('data-url');
      $.getScript(user_url)
    }
  );
}

$(document).on('turbolinks:load', function(){chosen_init()});
