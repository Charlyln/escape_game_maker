event_inherited();

text_button = "Restart";
scale = 4

x_value = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0])/2);
y_value = camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0])/2);

do_action_button = function () {
	//room_goto(2);
	instance_create_layer(x_value,y_value, "lyr_recap", obj_input_choice)
	instance_destroy()
};
