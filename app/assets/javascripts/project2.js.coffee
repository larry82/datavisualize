ready = ->
	project2_markers = (graph_type) ->
		if graph_type == "GroundWater"
			return markers = [{'date': new Date('2012/6/11 2:00'), 'label': '-42'},{'date': new Date('2012/6/13 6:00'), 'label': '-35'}]
		if graph_type == "Distance"
			return markers = [{'date': new Date('2012/6/8 12:00'), 'label': '0.5cm'},{'date': new Date('2012/6/15 10:00'), 'label': '2cm'}]
		if graph_type == "Rainfall"
			console.log("debug")
			return markers = [{'date': new Date('2012/6/12 0:00'), 'label': '20'},{'date': new Date('2012/6/13 10:00'), 'label': '40'},{'date': new Date('2012/6/14 10:00'), 'label': '80'}]

	project2_draw = (data_btn_id) ->
		data_btn = $('#'+data_btn_id.toString())
		# 按鈕上的資料型態
		graph_type = data_btn.data('graph-type')
		title = data_btn.data('title')
		data1 = data_btn.data('data-for-graph')
		label_y = data_btn.data('label-y')

		markers = project2_markers(graph_type)
		console.log(markers)

		# 要拿到的y值
		y = graph_type.toString()
		# 特殊處理
		# 如果要算日雨量的話
		if graph_type == "Daily_Rainfall"
			y = 'Rainfall' 
		# 如果算地下水，轉換座標
		if graph_type == "GroundWater"
			min_y = -100
			max_y = 0
		else
			min_y = null
			max_y = null

		$('#graph').html('')
		# 如果轉換過日期就不用再轉一遍
		if data1[1].Time.toString().indexOf("CST") <= 0
			data1 = MG.convert.date(data1, 'Time','%Y/%m/%d %H:%M')
		# 畫圖 
		MG.data_graphic({
			data: data1,
			title: title,
			full_width: true,
			height: 300,
			left: 70,
			bottom:50,
			markers: markers,
			x_extended_ticks: true,
			# baselines:[{value:50, label:'a baseline'}],
			x_label:"時間",
			y_label:label_y,
			target: '#project2-graph',
			x_accessor: 'Time',
			y_accessor: y,
			max_y: max_y,
			min_y: min_y,
		})

	if $('#project2-graph').length > 0
		project2_draw("Rainfall")
		$("#Rainfall").addClass("btn-primary").removeClass("btn-info")

	$('a.btn-change-graph-type').click ->
		id = $(this).attr('id')
		project2_draw(id)
		$(".btn-primary").addClass("btn-info").removeClass("btn-primary")
		$(this).addClass("btn-primary").removeClass("btn-info")


$(document).ready(ready)
$(document).on('page:load', ready)