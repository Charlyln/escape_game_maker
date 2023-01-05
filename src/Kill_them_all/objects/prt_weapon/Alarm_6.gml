draw_self()


if (instance_exists(prt_weapon)) {
total_cooldown = time_reload
actual_cooldown = alarm[0]
reload_percent = (actual_cooldown / total_cooldown) * 100
custom_green = #00FF00


	if (reload_percent > 0) {
		if (success_surcharge) {
			draw_healthbar(x - 55, y + 30, x  -48, y - 25, reload_percent, c_black, custom_green, custom_green, 2, false, true)
		} else if (miss_surcharge) {
			draw_healthbar(x - 55, y + 30, x  -48, y - 25, reload_percent, c_black, c_red, c_red, 2, false, true)
		} else if (reload_percent >= 70 || reload_percent <= 50 && !success_surcharge && !miss_surcharge) {
			draw_healthbar(x - 55, y + 30, x  -48, y - 25, reload_percent, c_black, c_gray, c_gray, 2, false, true)
			surcharge_range = false
		} else{
			surcharge_range = true
			draw_healthbar(x - 55, y + 30, x  -48, y - 25, reload_percent, c_black, custom_green, custom_green, 2, false, true)
		}
	}
}
