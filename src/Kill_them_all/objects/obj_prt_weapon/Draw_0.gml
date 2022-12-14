draw_self()


if (instance_exists(obj_prt_weapon)) {
total_cooldown = time_reload
actual_cooldown = alarm[0]
reload_percent = (actual_cooldown / total_cooldown) * 100
custom_green = #00FF00


	if (reload_percent > 0) {
		if (success_surcharge) {

		range_x_1 =	random_range(55, 60)
		range_y_1 =	random_range(30, 35)
		range_x_2 =	random_range(43, 48)
		range_y_2 =	random_range(20, 25)
	
	draw_healthbar(x - range_x_1, y + range_y_1, x  -range_x_2, y - range_y_2, 100, c_black, custom_green, custom_green, 2, false, true)
	
	
	
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
