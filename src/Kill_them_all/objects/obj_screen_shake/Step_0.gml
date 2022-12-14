xpDisplayX = camera_get_view_x(view_camera[0])
xpDisplayY = camera_get_view_y(view_camera[0])


if (obj_prt_weapon.success_surcharge && obj_prt_weapon.reloading && obj_prt_weapon.alarm[0] <= obj_prt_weapon.reload_sprite_time) {
	shake = true
	alarm[0] = obj_prt_weapon.reload_sprite_time
}

if (shake) {
	range = 10
	camera_set_view_pos(view_camera[0], xpDisplayX + random_range(-range, range), xpDisplayY + random_range(-range, range))
} else {
 	camera_set_view_pos(view_camera[0], xpDisplayX , xpDisplayY)
}

