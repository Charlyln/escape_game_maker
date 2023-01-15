event_inherited()


if (bullet_3_cooldown < 1 && global.beat) {
	x_value = camera_get_view_x(view_camera[0])
	y_value = camera_get_view_y(view_camera[0])
	range = random_range(0, camera_get_view_width(view_camera[0]))
	instance_create_layer(x_value + range, y_value, "BulletsLayer", obj_boss_bullet_final);
	bullet_3_cooldown = bullet_3_time_cooldown;
}
bullet_3_cooldown -= 1;