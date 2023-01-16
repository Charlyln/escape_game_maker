instance_create_layer(x, y - 200, "lyr_commands", obj_text_game_win)
instance_create_layer(x, y - 170, "lyr_commands", obj_text_game_congrats)

	x_view = camera_get_view_x(view_camera[0])
    y_view = camera_get_view_y(view_camera[0])
    w_view =  camera_get_view_width(view_camera[0]) 
    h_view =  camera_get_view_height(view_camera[0])
	

instance_create_layer(x_view + w_view - 200, y_view + h_view, "lyr_commands", obj_text_button_continue)











