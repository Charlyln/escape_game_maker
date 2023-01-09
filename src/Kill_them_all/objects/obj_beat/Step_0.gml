music_position = audio_sound_get_track_position(global.beat_1);

if (music_position <= beat_position_1 + beat_range) {
	// < 0.1
	global.beat = true;

	if (!global.beat_loop_reload) {
		if ((global.beat_loop = 4)) {
			global.beat_loop = 1;
			
		} else {
			global.beat_loop += 1;
		}

		global.beat_loop_reload = true;
	}
	
	
	
} else if (music_position > beat_position_1 + beat_range && music_position < beat_position_1 + beat_range + miss_range) {
	// > 0.1 && < 0.3
	global.beat_miss = "Too late";
	// show_debug_message("Too late");
	global.beat = false;
	global.can_play_beat_3 = false;
} else if (music_position >= beat_position_2 - beat_range - miss_range && music_position < beat_position_2 - beat_range) {
	// > 0.24 && < 0.44
	global.beat_miss = "Too early";
	// show_debug_message("Too early");
	global.beat = false;
	global.can_play_beat_3 = false;
} else if (music_position >= beat_position_2 - beat_range && music_position <= beat_position_2 + beat_range) {
	global.beat = true;
	// show_debug_message("BEAT");
	global.can_play_beat_3 = false;
} else if (music_position > beat_position_2 + beat_range && music_position < beat_position_2 + beat_range + miss_range) {
	global.beat_miss = "Too late";
	// show_debug_message("Too late");
	global.beat = false;
	global.can_play_beat_3 = false;
} else if (music_position >= beat_position_3 - beat_range - miss_range && music_position < beat_position_3 - beat_range) {
	global.beat_miss = "Too early";
	// show_debug_message("Too early");
	global.beat = false;
	global.can_play_beat_3 = false;
} else if (music_position >= beat_position_3 - beat_range && music_position <= beat_position_3 + beat_range) {
	global.beat = true;
	// show_debug_message("BEAT");
	global.can_play_beat_3 = false;
} else if (music_position > beat_position_3 + beat_range && music_position < beat_position_3 + beat_range + miss_range) {
	global.beat_miss = "Too late";
	// show_debug_message("Too late");
	global.beat = false;
	global.can_play_beat_3 = false;
} else if (music_position >= beat_position_4 - beat_range - miss_range && music_position < beat_position_4 - beat_range) {
	global.beat_miss = "Too early";
	// show_debug_message("Too early");
	global.beat = false;
	global.can_play_beat_3 = false;
} else if (music_position >= beat_position_4 - beat_range && music_position <= beat_position_4 + beat_range) {
	// > 1.55 && < 1.65
	global.beat = true;
	// show_debug_message("BEAT");
	global.can_play_beat_3 = false;
} else if (music_position > beat_position_4 + beat_range && music_position < beat_position_4 + beat_range + miss_range) {
	// > 1.65 && < 1.75
	global.beat_miss = "Too late";
	// show_debug_message("Too late");
	global.beat = false;
	global.can_play_beat_3 = false;
} else if (music_position >= beat_position_5 - beat_range - miss_range && music_position < beat_position_5 - beat_range) {
	global.beat_miss = "Too early";
	// show_debug_message("Too early");
	global.beat = false;
	global.can_play_beat_3 = false;
} else if (music_position >= beat_position_5 - beat_range) {
	// > 2.057
	global.beat = true;
	global.beat_loop_reload = false;
	// show_debug_message("BEAT");
	global.can_play_beat_3 = false;
} else {
	global.beat = false;
	global.beat_miss = "Not in rhythm";
	global.can_play_beat_3 = false;
}
global.music_position = music_position;



if (music_position < 0.05 && global.beat_loop == 1) {
				global.can_play_beat_3 = true;
			} else {
				global.can_play_beat_3 = false;
			}
			
			if (global.beat_loop == 4 && music_position > 1 || global.beat_loop == 1 && music_position < 0.1) {
				global.boss_can_shoot = true;
			} else {
				global.boss_can_shoot = false;
			}
			
			
		
			
			
//			show_debug_message(global.can_play_beat_3);
//show_debug_message(music_position);
//show_debug_message(global.beat_loop);
//show_debug_message("----------");

if (global.beat) {
	//show_debug_message("BEAT");
} else {
	//show_debug_message(global.beat_miss)
}

if (music_position <= human_beat_position_1 + human_beat_range) {
	// < 0.1
	global.human_beat = true;
} else if (music_position > human_beat_position_1 + human_beat_range && music_position < human_beat_position_1 + human_beat_range + human_miss_range) {
	// > 0.1 && < 0.3
	global.human_beat_miss = "Too late";
	// show_debug_message("Too late");
	global.human_beat = false;
} else if (music_position >= human_beat_position_2 - human_beat_range - human_miss_range && music_position < human_beat_position_2 - human_beat_range) {
	// > 0.24 && < 0.44
	global.human_beat_miss = "Too early";
	// show_debug_message("Too early");
	global.human_beat = false;
} else if (music_position >= human_beat_position_2 - human_beat_range && music_position <= human_beat_position_2 + human_beat_range) {
	global.human_beat = true;
	// show_debug_message("BEAT");
} else if (music_position > human_beat_position_2 + human_beat_range && music_position < human_beat_position_2 + human_beat_range + human_miss_range) {
	global.human_beat_miss = "Too late";
	// show_debug_message("Too late");
	global.human_beat = false;
} else if (music_position >= human_beat_position_3 - human_beat_range - human_miss_range && music_position < human_beat_position_3 - human_beat_range) {
	global.human_beat_miss = "Too early";
	// show_debug_message("Too early");
	global.human_beat = false;
} else if (music_position >= human_beat_position_3 - human_beat_range && music_position <= human_beat_position_3 + human_beat_range) {
	global.human_beat = true;
	// show_debug_message("BEAT");
} else if (music_position > human_beat_position_3 + human_beat_range && music_position < human_beat_position_3 + human_beat_range + human_miss_range) {
	global.human_beat_miss = "Too late";
	// show_debug_message("Too late");
	global.human_beat = false;
} else if (music_position >= human_beat_position_4 - human_beat_range - human_miss_range && music_position < human_beat_position_4 - human_beat_range) {
	global.human_beat_miss = "Too early";
	// show_debug_message("Too early");
	global.human_beat = false;
} else if (music_position >= human_beat_position_4 - human_beat_range && music_position <= human_beat_position_4 + human_beat_range) {
	// > 1.55 && < 1.65
	global.human_beat = true;
	// show_debug_message("BEAT");
} else if (music_position > human_beat_position_4 + human_beat_range && music_position < human_beat_position_4 + human_beat_range + human_miss_range) {
	// > 1.65 && < 1.75
	global.human_beat_miss = "Too late";
	// show_debug_message("Too late");
	global.human_beat = false;
} else if (music_position >= human_beat_position_5 - human_beat_range - human_miss_range && music_position < human_beat_position_5 - human_beat_range) {
	global.human_beat_miss = "Too early";
	// show_debug_message("Too early");
	global.human_beat = false;
} else if (music_position >= human_beat_position_5 - human_beat_range) {
	// > 2.057
	global.human_beat = true;
	// show_debug_message("BEAT");
} else {
	global.human_beat = false;
	global.human_beat_miss = "Not in rhythm";
}
