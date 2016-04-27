ready = ->
	$('#index-start-btn').mouseover ->
		$('#index').css("background-image", "url(assets/bg2.png)");
	$('#index-start-btn').mouseout ->
		$('#index').css("background-image", "url(assets/bg.png)");  
$(document).ready(ready)
$(document).on('page:load', ready)