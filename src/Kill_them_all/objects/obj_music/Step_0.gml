

if (instance_exists(obj_player) && global.beat) {
	if (obj_player.is_perk_choice) {
		audio_sound_gain(global.beat_1, 0, 0);
		audio_sound_gain(global.beat_2, 0, 0);
		audio_sound_gain(global.beat_3, 0, 0);
		beat_1_is_playing = false;
		beat_2_is_playing = false;
		beat_3_is_playing = false;
		audio_sound_gain(global.beat_transition, 1, 0);
	} else {
		audio_sound_gain(global.beat_transition, 0, 0);

		if (obj_player.level < 1 && !beat_1_is_playing) {
			audio_sound_gain(global.beat_1, 1, 0);
			audio_sound_gain(global.beat_2, 0, 0);
			audio_sound_gain(global.beat_3, 0, 0);
			// show_debug_message("beat_1");
			beat_1_is_playing = true;
		} else if (obj_player.level >= 1 && obj_player.level < 2 && !beat_2_is_playing) {
			audio_sound_gain(global.beat_1, 0, 0);
			audio_sound_gain(global.beat_2, 1, 0);
			audio_sound_gain(global.beat_3, 0, 0);
			// show_debug_message("beat_2");
			beat_2_is_playing = true;
		} else if (obj_player.level >= 2 && obj_player.level < 3 && !beat_3_is_playing) {
			
		// show_debug_message(global.beat_loop);
			if (global.can_play_beat_3 && global.beat_loop == 1) {
							audio_sound_gain(global.beat_3, 1, 0);
						audio_sound_gain(global.beat_2, 0, 0);
			audio_sound_gain(global.beat_1, 0, 0);
			
// show_debug_message("beat_3");
	
			beat_3_is_playing = true;
			} else {
			audio_sound_gain(global.beat_2, 1, 0);
			audio_sound_gain(global.beat_1, 0, 0);
			audio_sound_gain(global.beat_3, 0, 0);
			// show_debug_message("beat_2");
			beat_2_is_playing = true;
			
			}


		}
	}
}


			if (obj_player.beat_dashing && !beat_dashing_is_playing ) {
							audio_sound_gain(global.beat_dash, 1, 0);
							// show_debug_message("beat dash");
							beat_dashing_is_playing = true

			} else if (!obj_player.beat_dashing && beat_dashing_is_playing) {
			audio_sound_gain(global.beat_dash, 0, 0);
			
			// show_debug_message("no beat dash");
			beat_dashing_is_playing = false
			
			}
