if (!obj_player.pause) {

x = obj_player.x
y = obj_player.y

if (!obj_player.dead) {
image_angle = point_direction(x,y,mouse_x, mouse_y)
}


xpDisplayX = camera_get_view_x(view_camera[0])
mouse_x_from_start_camera = device_mouse_x_to_gui(0)

if (reloading && alarm[0] <= reload_sprite_time) {

sprite_index = reloaded_sprite
}
else if (xpDisplayX + mouse_x_from_start_camera  < x) {
	sprite_index = flip_sprite
} else {
	sprite_index = regular_sprite
}

// Shoot

shoot = mouse_check_button(mb_left)
special = mouse_check_button(mb_right)

if (shoot && cooldown < 1 && bullet_in_magazine > 0) {
	
	show_debug_message(image_angle)
	
	for (var i = 0; i < projectile; i += 1) {
		instance_create_layer(x,y, "BulletsLayer", obj_bullet)
	}
	
	audio_play_sound(snd_bullet, 2, false, 0.4)
	cooldown = weapon_cooldown - obj_player.fire_rate
	bullet_in_magazine -= 1

}

if (trigger_raise_during_reload && !surcharge_range && shoot && !success_surcharge) {
	trigger_raise_during_reload = false
	miss_surcharge = true
} else if (trigger_raise_during_reload && surcharge_range && shoot && !miss_surcharge &&!success_surcharge)  {
	alarm[0] = reload_sprite_time
	audio_play_sound(reload_sound, 1, false, 1)
	audio_play_sound(snd_surcharge, 1, false)
	success_surcharge = true
}

if (reloading && !shoot && !trigger_raise_during_reload) {
 trigger_raise_during_reload = true
}




if (bullet_in_magazine < 1 && !reloading) {
	alarm[0] = time_reload
	reloading = true
}


if (reloading && alarm[0] == reload_sprite_time) {
	audio_play_sound(reload_sound, 1, false)
}





if (special && cooldown_sec < 1) {
	
	alarm[2] = 20
	sprite_index = spr_enemy_12931
	
	for (var i = 0; i < 1; i += 1) {
		instance_create_layer(x,y, "BulletsLayer", obj_bullet_sec)
	}

	
	audio_play_sound(snd_fire, 1, false, 1)
	cooldown_sec = 360
}
cooldown -= 1
cooldown_sec -= 1


}