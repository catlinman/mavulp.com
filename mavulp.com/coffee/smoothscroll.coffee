# smoothscroll script for easy navigation inside the page.
$ ->
	$('a[href^="\\#"]').on 'click.smoothscroll', (e) ->
		e.preventDefault()

		$target = $(document.getElementById(@hash.substr(1)))

		$('html, body').stop().animate {
			'scrollTop': $target.offset().top
			}, 500, 'swing', ->
				window.location.hash = @hash
