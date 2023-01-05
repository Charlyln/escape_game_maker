event_inherited();

text_button = "Back to menu";
scale = 3

x_value = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0])/2);
y_value = camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0])/2);

do_action_button = function () {
	room_goto(1);	
};

