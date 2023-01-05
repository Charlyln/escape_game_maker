event_inherited()

text_button = "Tutoriel"

do_action_button = function () {
	x_value = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0])/2);
y_value = camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0])/2);
		instance_create_layer(240,  135, "lyr_window", obj_window_tutoriel)
	}






