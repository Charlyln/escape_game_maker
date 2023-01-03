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

	if (alarm[1] <= 20 && !can_dash) {
		if (alarm[1] == 20) audio_play_sound(snd_dash_reload, 1, false);
		sprite_index = spr_player_dash_reload;
	} else if (move_up || move_left || move_down || move_right) {
		if (alarm[0] > 0) {
			image_alpha = 0.5;
			obj_prt_weapon.image_alpha = 0.5;

			if (dash_direction == "up") {
				sprite_index = spr_player_dash_up;
				sprite_set_speed(spr_player_dash_up, 50, spritespeed_framespersecond);
			}
			if (dash_direction == "down") {
				sprite_index = spr_player_dash_down;
				sprite_set_speed(
					spr_player_dash_down,
					50,
					spritespeed_framespersecond
				);
			}
			if (dash_direction == "right") {
				sprite_index = spr_player_dash_right;
				sprite_set_speed(
					spr_player_dash_right,
					50,
					spritespeed_framespersecond
				);
			}
			if (dash_direction == "left") {
				sprite_index = spr_player_dash_left;
				sprite_set_speed(
					spr_player_dash_left,
					50,
					spritespeed_framespersecond
				);
			}
			if (dash_direction == "left-down") {
				sprite_index = spr_player_dash_left_down;
				sprite_set_speed(
					spr_player_dash_left_down,
					50,
					spritespeed_framespersecond
				);
			}
			if (dash_direction == "left-up") {
				sprite_index = spr_player_dash_left_up;
				sprite_set_speed(
					spr_player_dash_left_up,
					50,
					spritespeed_framespersecond
				);
			}
			if (dash_direction == "right-down") {
				sprite_index = spr_player_dash_right_down;
				sprite_set_speed(
					spr_player_dash_right_down,
					50,
					spritespeed_framespersecond
				);
			}
			if (dash_direction == "right-up") {
				sprite_index = spr_player_dash_right_up;
				sprite_set_speed(
					spr_player_dash_right_up,
					50,
					spritespeed_framespersecond
				);
			}
		} else {
			sprite_index = spr_player_idle;
			image_alpha = 1;
			obj_prt_weapon.image_alpha = 1;
		}
	} else {
		sprite_index =  spr_enemy_129;
	}

	// Dash

	start_dashing = keyboard_check_pressed(vk_space);

	if (start_dashing && can_dash) {
		dashing = true;

		dash_direction = get_dash_direction(move_up, move_left, move_down, move_right);

		moove_speed = moove_speed + dash_speed;
		alarm[0] = dash_duration;
		alarm[1] = dash_cooldown;
		audio_play_sound(snd_dash, 1, false);
		can_dash = false;
		invulnerability = true;
		start_dashing = false;
	}

	// XP

	xpDisplayX = camera_get_view_x(view_camera[0]);
	xpDisplayY = camera_get_view_y(view_camera[0]);

	if (xp >= 100) {
		level += 1;
		xp = 0;
		pause = true;
		instance_deactivate_all(true);
		perk_choice(xpDisplayX, xpDisplayY);
		audio_play_sound(snd_powerup, 1, false, 1);
	}
}

if (dead && !instances_created) {
	sprite_index = spr_player_dead;
	instance_create_layer(xpDisplayX + 50, xpDisplayY + 20, "lyr_commands", obj_text_game_you_died);
	instance_create_layer(xpDisplayX + 50, xpDisplayY + 20, "lyr_commands", obj_recap_infos);
	instance_create_layer(xpDisplayX + 960, xpDisplayY + 700, "lyr_commands", obj_text_button_restart);
	audio_stop_sound(snd_start);
	audio_stop_sound(snd_boss_start);
	
	instances_created = true
} 
