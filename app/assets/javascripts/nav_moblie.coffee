ready = ->
	$('#nav-mobile-menu-btn').click ->
		$('#nav-mobile').toggle('slide')
		$(this).hide()
	$('#btn-close-mobile-menu').click ->
		
		$('#nav-mobile').toggle('slide')
		$('#nav-mobile-menu-btn').show()


$(document).ready(ready)
$(document).on('page:load', ready)