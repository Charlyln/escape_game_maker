if (instance_exists(prt_weapon)) {
	if (prt_weapon.reloading && prt_weapon.miss_surcharge && !is_get_fail_message) {
		fail_message = get_miss_surcharge_message(global.music_position);
		is_get_fail_message = true;
		display_message = true;
		alarm[0] = 100;
	}
}
