event_inherited();

text_button = "Restart";
scale = 4

x_value = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0])/2);
y_value = camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0])/2);

do_action_button = function () {
	
	if (global.name == "no_name" ) {
	instance_create_layer(x_value,y_value, "lyr_recap", obj_input_choice)
	instance_destroy()
	} else {
		str = "str"
post = http_post_string("https://gamemakerapi.herokuapp.com/name/" + global.name + "/score/" + string(obj_player.level), str);
	room_goto(1);	
	audio_play_sound(snd_start, 1, true)
	}
};

