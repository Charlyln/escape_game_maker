if (!pause && !dying) {
	// Move

	move_up = press("Z") || press("W");
	move_left = press("A") || press("Q");
	move_down = press("S");
	move_right = press("D");

	if (!dashing) {
		if (move_up && !move_left && !move_right) y -= moove_speed - moove_speed_malus;
		if (move_down && !move_left && !move_right) y += moove_speed - moove_speed_malus;
		if (move_left && !move_up && !move_down) x -= moove_speed - moove_speed_malus;
		if (move_right && !move_up && !move_down) x += moove_speed - moove_speed_malus;

		if (move_right && (move_up || move_down)) x += (moove_speed - moove_speed_malus) / 1.5;
		if (move_left && (move_up || move_down)) x -= (moove_speed - moove_speed_malus) / 1.5;
		if (move_up && (move_left || move_right)) y -= (moove_speed - moove_speed_malus) / 1.5;
		if (move_down && (move_left || move_right)) y += (moove_speed - moove_speed_malus) / 1.5;
	} else {
		if (dash_direction == "up") y -= moove_speed - moove_speed_malus;
		if (dash_direction == "down") y += moove_speed - moove_speed_malus;
		if (dash_direction == "right") x += moove_speed - moove_speed_malus;
		if (dash_direction == "left") x -= moove_speed - moove_speed_malus;
		if (dash_direction == "left-down") {
			x -= moove_speed - moove_speed_malus / 1.5;
			y += moove_speed - moove_speed_malus / 1.5;
		}
		if (dash_direction == "left-up") {
			x -= moove_speed - moove_speed_malus / 1.5;
			y -= moove_speed - moove_speed_malus / 1.5;
		}
		if (dash_direction == "right-down") {
			x += moove_speed - moove_speed_malus / 1.5;
			y += moove_speed - moove_speed_malus / 1.5;
		}
		if (dash_direction == "right-up") {
			y -= moove_speed - moove_speed_malus / 1.5;
			x += moove_speed - moove_speed_malus / 1.5;
		}
	}

	// Animations
	
	if (is_perk_choice) {
		show_debug_message("is_perk_choice")
		if (global.beat) {
			sprite_index = spr_player_dance;
						show_debug_message("spr_player_dance")
		} else {
			sprite_index = spr_player_no_dance;
			show_debug_message("spr_player_no_dance")
		}
		
	
	}

	 else if (is_hit) {
		sprite_index = spr_player_hit;
	} else if (move_up || move_left || move_down || move_right) {
			show_debug_message(dash_direction)
		if (dashing) {
			image_alpha = 0.5;
			prt_weapon.image_alpha = 0.5;
			
			show_debug_message(dash_direction )

			if (dash_direction == "up") {
				sprite_index = spr_player_dash_up;
			sprite_set_speed(spr_player_dash_up, 50, spritespeed_framespersecond);
			}
			if (dash_direction == "down") {
				sprite_index = spr_player_dash_down;
			sprite_set_speed(spr_player_dash_down, 50, spritespeed_framespersecond);
			}
			if (dash_direction == "right") {
				sprite_index = spr_player_dash_right;
			sprite_set_speed(spr_player_dash_right, 50, spritespeed_framespersecond);
			}
			if (dash_direction == "left") {
				sprite_index = spr_player_dash_left;
			sprite_set_speed(spr_player_dash_left, 50, spritespeed_framespersecond);
			}
			if (dash_direction == "left-down") {
				sprite_index = spr_player_dash_left_down;
			sprite_set_speed(spr_player_dash_left_down, 50, spritespeed_framespersecond);
			}
			if (dash_direction == "left-up") {
				sprite_index = spr_player_dash_left_up;
			sprite_set_speed(spr_player_dash_left_up, 50, spritespeed_framespersecond);
			}
			if (dash_direction == "right-down") {
				sprite_index = spr_player_dash_right_down;
			sprite_set_speed(spr_player_dash_right_down, 50, spritespeed_framespersecond);
			}
			if (dash_direction == "right-up") {
				sprite_index = spr_player_dash_right_up;
			sprite_set_speed(spr_player_dash_right_up, 50, spritespeed_framespersecond);
			}
		} else {
			sprite_index = spr_player_idle;
			image_alpha = 1;
			prt_weapon.image_alpha = 1;
		}
	} else {
		sprite_index = spr_enemy_129;
	}

	// Dash

	press_dash = keyboard_check_pressed(vk_space);
	


	if (press_dash && global.human_beat && can_dash && (move_up || move_left || move_right ||move_down)) {
		dashing = true;
		beat_dashing = true
		invulnerability = true;
		if (!global.beat_tutoriel_dash && global.beat_tutoriel_reload && obj_beat_tuto.alarm[0] < 1) {
		global.beat_tutoriel_dash = true
		audio_play_sound(snd_yeah, 1, false, 1);
		obj_beat_tuto.alarm[0] = 200
		}
		
		dash_direction = get_dash_direction(move_up, move_left, move_down, move_right);
		
	

		moove_speed = moove_speed + dash_speed;
		alarm[0] = dash_duration;
		alarm[1] = dash_cooldown;
		alarm[4] = dash_beat_duration;
		can_dash = false;
		
		press_dash = false;
	}

	// XP

	x_value = camera_get_view_x(view_camera[0]);
	y_value = camera_get_view_y(view_camera[0]);

	if (xp >= 100) {
		is_perk_choice = true;
		level += 1;
		xp = 0;
		pause = true;
		instance_deactivate_layer("EnemyLayer");
		perk_choice(x_value, y_value);
		audio_play_sound(snd_powerup, 1, false, 1);
	}
}

if (dead && !instances_created) {
	sprite_index = spr_player_dead;
	instance_create_layer(x_value + 50, y_value + 20, "lyr_commands", obj_text_game_you_died);
	instance_create_layer(x_value + 50, y_value + 20, "lyr_commands", obj_recap_infos);
	instance_create_layer(x_value + 960, y_value + 700, "lyr_commands", obj_text_button_restart);
	audio_stop_sound(snd_music_1s);
	audio_stop_sound(snd_music_2s);
	//audio_stop_sound(snd_boss_start);

	instances_created = true;
}

if (pv < 1 && !dying && !dead) {
	dying = true;
	pause = true;
	instance_deactivate_layer("EnemyLayer");
	alarm[3] = 30;
	audio_play_sound(snd_player_death, 2, false, 1);
	sprite_index = spr_player_death;
} else {
if (is_perk_choice) {
		if (global.beat && alarm[5] < 1) {
			sprite_index = spr_player_dance;
						alarm[5] = 15
		} 
		
	
	}
}
