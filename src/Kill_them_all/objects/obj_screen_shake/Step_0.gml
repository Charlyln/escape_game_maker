if (instance_exists(prt_weapon)) {

x_value = camera_get_view_x(view_camera[0]);
y_value = camera_get_view_y(view_camera[0]);

if (prt_weapon.success_surcharge && prt_weapon.reloading && prt_weapon.alarm[0] <= prt_weapon.reload_sprite_time) {
	shake = true;
	alarm[0] = prt_weapon.reload_sprite_time;
}

if (prt_weapon.shooting) {
	bullet_shake = true;
	alarm[1] = 20;
}




if (shake) {
	shake_range = 10;
	camera_set_view_pos(view_camera[0], x_value + random_range(-shake_range, shake_range), y_value + random_range(-shake_range, shake_range));
} else if (bullet_shake) {
	bullet_shake_range = 5;
	camera_set_view_pos(view_camera[0], x_value + random_range(-bullet_shake_range, bullet_shake_range), y_value + random_range(-bullet_shake_range, bullet_shake_range));
}else if (obj_player.is_hit) {
	bullet_shake_range = 10;
	camera_set_view_pos(view_camera[0], x_value + random_range(-bullet_shake_range, bullet_shake_range), y_value + random_range(-bullet_shake_range, bullet_shake_range));
} else 
if (global.beat) {
	shake_range = 5;
	camera_set_view_pos(view_camera[0], x_value + random_range(-shake_range, shake_range), y_value + random_range(-shake_range, shake_range));
}else {
	camera_set_view_pos(view_camera[0], x_value, y_value);
}
}
