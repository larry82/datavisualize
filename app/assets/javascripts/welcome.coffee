ready = ->
	$('#index-start-btn').mouseover ->
		$('#index').css("background-image", "url(bg2.png)");
	$('#index-start-btn').mouseout ->
		$('#index').css("background-image", "url(bg.png)");  
$(document).ready(ready)
$(document).on('page:load', ready)