
xpDisplayX = camera_get_view_x(view_camera[0])
xpDisplayY = camera_get_view_y(view_camera[0])

if (!obj_player.pause) {
	obj_player.pause = true
	instance_deactivate_layer("EnemyLayer");
	instance_create_layer(xpDisplayX + 50,xpDisplayY + 50, "lyr_commands", obj_commands)
	instance_create_layer(xpDisplayX + 100,xpDisplayY + 620, "lyr_recap", obj_tuto_button)
}  else {
	obj_player.pause = false
	instance_activate_layer("EnemyLayer");
	instance_destroy(obj_commands)
	instance_destroy(obj_tuto_button)
	instance_destroy(obj_tuto_gif_surcharge)
}