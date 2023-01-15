event_inherited();

text_button = "Back";
scale = 3

do_action_button = function () {
	obj_player.pause = false
	instance_activate_layer("EnemyLayer");
		instance_activate_layer("BulletsLayer");
	instance_destroy(obj_pause_window)
	instance_destroy(obj_text_button_back_to_menu_pause) 
	instance_destroy()
};
