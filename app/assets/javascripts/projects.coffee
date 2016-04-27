ready = ->
	$('div.project-cards').mouseover ->
		$(this).css("opacity", "1");
	$('div.project-cards').mouseout ->
		$(this).css("opacity", "0.8");
$(document).ready(ready)
$(document).on('page:load', ready)