event_inherited()

do_action_button = function () {


if (instance_exists(prt_tuto_text) && instance_exists(prt_tuto_gif)) {
	
	show_debug_message("herre")
	instance_destroy(prt_tuto_text);
	instance_destroy(prt_tuto_gif);

}

instance_create_layer(300, 150, "lyr_window_button", obj_text);
is_tap = false
can_tap = true
};