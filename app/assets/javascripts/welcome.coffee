preload = (arrayOfImages) ->
  $(arrayOfImages).each ->
    $('<img/>')[0].src = this
    return
  return

preload [
  'bg2.png',
  'bg.png',
]

console.log("lol")


ready = ->
	$('#index-start-btn').mouseover ->
		$('#index').css("background-image", "url(bg2.png)");
	$('#index-start-btn').mouseout ->
		$('#index').css("background-image", "url(bg.png)");


$(document).ready(ready)
$(document).on('page:load', ready)