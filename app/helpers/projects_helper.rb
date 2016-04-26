module ProjectsHelper

	def graph_type_link(graph_type,title,label_y)
		if graph_type == "GroundWater"
			markers = @markers_GroundWater
			data = @data
		elsif graph_type == "Distance"
		    markers = @markers_Distance
		    data = @data
		elsif graph_type == "Rainfall"
		    markers = @markers_Rainfall
		    data = @data
		else
			data = @data_Day
		end

		unless params[:graph_type]==graph_type.to_s
			link_to title.to_s,"#/",
			data:{
				data_for_graph:data, 
				graph_type:graph_type.to_s,
				title:title.to_s,
				label_y:label_y
			},
			class:"btn btn-info btn-change-graph-type",
			id:graph_type.to_s
		else
			link_to title.to_s,"#/",
			data:{
				data_for_graph:data, 
				graph_type:graph_type.to_s,
				title:title.to_s,
				label_y:label_y
			},
			class:"btn btn-primary btn-change-graph-type",
			id:graph_type.to_s
		end
	end
end
