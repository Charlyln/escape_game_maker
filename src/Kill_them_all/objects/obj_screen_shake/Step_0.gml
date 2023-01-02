xpDisplayX = camera_get_view_x(view_camera[0]);
xpDisplayY = camera_get_view_y(view_camera[0]);

if (obj_prt_weapon.success_surcharge && obj_prt_weapon.reloading && obj_prt_weapon.alarm[0] <= obj_prt_weapon.reload_sprite_time) {
	shake = true;
	alarm[0] = obj_prt_weapon.reload_sprite_time;
}

if (obj_prt_weapon.shooting) {
	bullet_shake = true;
	alarm[1] = 20;
}

if (shake) {
	shake_range = 5;
	camera_set_view_pos(view_camera[0], xpDisplayX + random_range(-shake_range, shake_range), xpDisplayY + random_range(-shake_range, shake_range));
} else if (bullet_shake) {
	bullet_shake_range = 2;
	camera_set_view_pos(view_camera[0], xpDisplayX + random_range(-bullet_shake_range, bullet_shake_range), xpDisplayY + random_range(-bullet_shake_range, bullet_shake_range));
} else {
	camera_set_view_pos(view_camera[0], xpDisplayX, xpDisplayY);
}
