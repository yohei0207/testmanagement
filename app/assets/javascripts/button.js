$(document).on('turbolinks:load', function() {

    $('nav').click(function (e) {
        e.preventDefault()
        $(this).tab('show')
      })
});