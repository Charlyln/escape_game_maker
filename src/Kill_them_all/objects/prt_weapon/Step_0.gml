
	x = obj_player.x;
	y = obj_player.y;

	if (!obj_player.dead) {
		image_angle = point_direction(x, y, mouse_x, mouse_y);
	}

	x_value = camera_get_view_x(view_camera[0]);
	mouse_x_from_start_camera = device_mouse_x_to_gui(0);

	if (reloading && alarm[0] < time_reload) {
		sprite_index = reloaded_sprite;
	} else if (x_value + mouse_x_from_start_camera < x) {
		sprite_index = flip_sprite;
	} else {
		sprite_index = regular_sprite;
	}

	// Shoot

	shoot = mouse_check_button(mb_left);
	special = mouse_check_button(mb_right);

	if (shoot && bullet_in_magazine > 0) {
		obj_player.moove_speed_malus = 1;
	} else {
		obj_player.moove_speed_malus = 0;
	}

	if (shoot && cooldown < 1 && bullet_in_magazine > 0) {
		for (var i = 0; i < projectile; i += 1) {
			if (global.beat) {
			instance_create_layer(x, y, "BulletsLayer", obj_bullet);
			shooting = true;


		bullet_sound = audio_play_sound(snd_weapon_bullet_2, 1, false);
		audio_sound_gain(bullet_sound, 5, 0);
		cooldown = weapon_cooldown - obj_player.fire_rate;
		bullet_in_magazine -= 1;
			} else {
			//instance_create_layer(x, y, "BulletsLayer", obj_bullet);
			}
			
		}

		
	} else {
		shooting = false;
	}

	if (trigger_release_during_reload && !global.human_beat && shoot && !success_surcharge) {
		trigger_release_during_reload = false;
		miss_surcharge = true;
		audio_play_sound(snd_no_more_bullet, 1, false);
	} else if (trigger_release_during_reload && global.human_beat && shoot && !miss_surcharge && !success_surcharge) {
		alarm[0] = reload_sprite_time;
		audio_play_sound(snd_clap, 1, false, 1);

		if (!global.beat_tutoriel_reload) {
			
		global.beat_tutoriel_reload = true
		audio_play_sound(snd_yeah, 1, false, 1);
		obj_beat_tuto.alarm[0] = 200
		}
		
		success_surcharge = true;
	}

	if (reloading && !shoot && !trigger_release_during_reload) {
		trigger_release_during_reload = true;
	}

	if (bullet_in_magazine < 1 && !reloading) {
		alarm[0] = time_reload;
		reloading = true;
	}

	if (reloading && alarm[0] = 0) {
		
		if (!success_surcharge) {
		
		audio_play_sound(reload_sound, 1, false);
		}
		
		alarm[1] = 10
	}

	if (special && cooldown_sec < 1 && global.beat ) {
		//sprite_index = spr_player_idle31;
		
				if (!global.beat_tutoriel_special && global.beat_tutoriel_dash && global.beat_tutoriel_reload && obj_beat_tuto.alarm[0] < 1) {
		global.beat_tutoriel_special = true
		audio_play_sound(snd_yeah, 1, false, 1);
		obj_beat_tuto.alarm[0] = 200
		}

		for (var i = 0; i < 1; i += 1) {
			instance_create_layer(x, y, "BulletsLayer", obj_bullet_sec);
		}

		audio_play_sound(snd_cymbal, 1, false, 1);
		cooldown_sec = special_reload_time;
	}
	cooldown -= 1;
	cooldown_sec -= 1;


