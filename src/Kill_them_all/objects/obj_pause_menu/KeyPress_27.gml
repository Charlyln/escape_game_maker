xpDisplayX = camera_get_view_x(view_camera[0]) + 50;
xpDisplayY = camera_get_view_y(view_camera[0]) + 50;

if (!obj_player.pause) {
	obj_player.pause = true
	instance_deactivate_layer("EnemyLayer");
	open_window(xpDisplayX, xpDisplayY,"lyr_tutoriel", "lyr_tutoriel_1")
	//instance_create_layer(x, y, "lyr_commands", obj_pause_menu)
	//instance_create_layer(xpDisplayX + 100,xpDisplayY + 620, "lyr_recap", obj_tuto_button)
}  else {
	obj_player.pause = false
	instance_activate_layer("EnemyLayer");
	//instance_destroy(obj_commands)
	//instance_destroy(obj_window)
		

	//nbr_instance_window = instance_number(obj_window);
	//last_intsance_window_id = instance_find(obj_window, nbr_instance_window - 1);
	instance_destroy(obj_window)


instance_destroy(prt_tutoriel)
instance_destroy(obj_button_pause_controls)
instance_destroy(obj_back_pause)
instance_destroy(obj_back_tutoriel)
instance_destroy(prt_button_tutoriel)
instance_destroy(prt_tuto_text)
instance_destroy(prt_tuto_gif)
}