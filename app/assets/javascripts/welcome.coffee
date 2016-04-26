ready = ->
	$('#index-start-btn').mouseover ->
		$('#index').css("background-image", "url(assets/bg2.png)");
		# $('#title').css("visibility", "hidden")
	$('#index-start-btn').mouseout ->
		$('#index').css("background-image", "url(assets/bg.png)");  
		# $('#title').css("visibility", "visible")
$(document).ready(ready)
$(document).on('page:load', ready)