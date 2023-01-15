if (instance_exists(obj_player) && global.music_position >= 2.1) {
	if (obj_player.is_perk_choice && !is_change_perk_choice) {
		audio_sound_gain(global.beat_1, 0, 0);
		audio_sound_gain(global.beat_2, 0, 0);
		audio_sound_gain(global.beat_3, 0, 0);
		beat_1_is_playing = false;
		beat_2_is_playing = false;
		beat_3_is_playing = false;
		is_change_perk_choice = true;
		show_debug_message("is_change_perk_choice" + string(global.music_position));
		audio_sound_gain(global.beat_transition, 1, 0);
	} else if (!obj_player.is_perk_choice) {
		audio_sound_gain(global.beat_transition, 0, 0);
		is_change_perk_choice = false;
		if (obj_player.level < 1 && !beat_1_is_playing) {
			audio_sound_gain(global.beat_1, 1, 0);
			audio_sound_gain(global.beat_2, 0, 0);
			audio_sound_gain(global.beat_3, 0, 0);
			show_debug_message("beat_1" + string(global.music_position));
			beat_1_is_playing = true;
		} else if (obj_player.level >= 1 && obj_player.level < 2 && !beat_2_is_playing) {
			audio_sound_gain(global.beat_1, 0, 0);
			audio_sound_gain(global.beat_2, 1, 0);
			audio_sound_gain(global.beat_3, 0, 0);
			show_debug_message("beat_2" + string(global.music_position));
			beat_2_is_playing = true;
		} else if (obj_player.level >= 2 && obj_player.level < 3 && !beat_3_is_playing) {
			show_debug_message(global.beat_loop);
			//if (global.can_play_beat_3 && global.beat_loop == 1) {
			if (global.beat_loop == 4) {
				audio_sound_gain(global.beat_3, 1, 0);
				audio_sound_gain(global.beat_2, 0, 0);
				audio_sound_gain(global.beat_1, 0, 0);

				show_debug_message("beat_3" + string(global.music_position));

				beat_3_is_playing = true;
			} else if (!beat_3_is_playing) {
				audio_sound_gain(global.beat_2, 1, 0);
				audio_sound_gain(global.beat_1, 0, 0);
				audio_sound_gain(global.beat_3, 0, 0);
				show_debug_message("beat_2 2" + string(global.music_position));
				beat_2_is_playing = true;
			}
		} else if (obj_player.level >= 3 && obj_player.level < 4 && !beat_4_is_playing) {
			if (global.beat_loop == 4) {
				audio_sound_gain(global.beat_3, 0, 0);
				audio_sound_gain(global.beat_4, 1, 0);
				beat_4_is_playing = true;
			} else if (!beat_3_is_playing) {
				audio_sound_gain(global.beat_3, 1, 0);
			}
		} else if (obj_player.level >= 4 && obj_player.level < 5 && !beat_5_is_playing) {
			audio_sound_gain(global.beat_5, 1, 0);
			audio_sound_gain(global.beat_4, 0, 0);
			beat_5_is_playing = true;
		} else if (obj_player.level >= 5 && obj_player.level < 6 && !play_beat_7) {
			if (global.beat_loop == 4 || (global.beat_loop == 2 && !beat_6_is_playing)) {
				audio_sound_gain(global.beat_5, 0, 0);
				audio_sound_gain(global.beat_6, 1, 0);
				show_debug_message("beat_6_is_playing");
				beat_6_is_playing = true;
			} else if (!beat_5_is_playing) {
				audio_sound_gain(global.beat_5, 1, 0);
				audio_sound_gain(global.beat_6, 0, 0);
				beat_5_is_playing = true;
			}

			music_position_7 = audio_sound_get_track_position(global.beat_7);

			show_debug_message(music_position_7);

			if (music_position_7 > 34.4) {
				play_beat_7 = true;
			}
		} else if (obj_player.level >= 5 && obj_player.level < 6 && beat_6_is_playing && play_beat_7 && !play_beat_8) {
			music_position_7 = audio_sound_get_track_position(global.beat_7);
			show_debug_message(music_position_7);

			if (music_position_7 > 34.4 && beat_7_is_playing && alarm[0] < 1) {
				play_beat_8 = true;
			}

			if (!beat_7_is_playing) {
				audio_sound_gain(global.beat_7, 1, 0);
				audio_sound_gain(global.beat_6, 0, 0);
				show_debug_message("beat_7_is_playing");
				beat_7_is_playing = true;
				alarm[0] = 50;
			}
		} else if (obj_player.level >= 5 && obj_player.level < 6 && beat_7_is_playing && !beat_8_is_playing && play_beat_8) {
			audio_sound_gain(global.beat_8, 1, 0);
			audio_sound_gain(global.beat_7, 0, 0);
			show_debug_message("beat_8_is_playing");
			beat_8_is_playing = true;
		} else if (obj_player.level >= 6 && obj_player.level < 7 && !beat_8_5_is_playing) {
			audio_sound_gain(global.beat_8_5, 1, 0);
			audio_sound_gain(global.beat_8, 0, 0);
			beat_8_5_is_playing = true;
		} else if (obj_player.level >= 7 && !beat_9_is_playing) {
			if (global.beat_loop == 4) {
				audio_sound_gain(global.beat_9, 1, 0);
				audio_sound_gain(global.beat_8_5, 0, 0);
				beat_9_is_playing = true;
			} else if (!beat_9_is_playing) {
				audio_sound_gain(global.beat_8_5, 1, 0);
			}
		}
	}
}

if (instance_exists(obj_player)) {
	if (obj_player.beat_dashing && !beat_dashing_is_playing) {
		audio_sound_gain(global.beat_dash, 1, 0);
		// show_debug_message("beat dash");
		beat_dashing_is_playing = true;
	} else if (!obj_player.beat_dashing && beat_dashing_is_playing) {
		audio_sound_gain(global.beat_dash, 0, 0);

		// show_debug_message("no beat dash");
		beat_dashing_is_playing = false;
	}
}
