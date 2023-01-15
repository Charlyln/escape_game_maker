if (!obj_player.is_perk_choice) {
x_value = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2
y_value = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) / 2

if (!obj_player.pause) {
	obj_player.pause = true
	instance_deactivate_layer("EnemyLayer");
		instance_deactivate_layer("BulletsLayer");
	instance_create_layer(x_value, y_value, "lyr_pause", obj_pause_window)
}  else {
	obj_player.pause = false
	instance_activate_layer("EnemyLayer");
		instance_activate_layer("BulletsLayer");
	instance_destroy(obj_pause_window)
	instance_destroy(obj_text_button_back_pause)
	instance_destroy(obj_text_button_back_to_menu_pause) 
}
}

