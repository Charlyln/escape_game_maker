function get_miss_surcharge_message(music_position) {
	beat_position_1 = 0;
	beat_position_2 = 0.55;
	beat_position_3 = 1.08;
	beat_position_4 = 1.62;
	beat_position_5 = 2.157;

	beat_range = 0.05;
	miss_range = 0.15;

	if (music_position > beat_position_1 + beat_range && music_position < beat_position_1 + beat_range + miss_range) {
		return "Too late!";
	} else if (music_position >= beat_position_2 - beat_range - miss_range && music_position < beat_position_2 - beat_range) {
		return "Too early!";
	} else if (music_position > beat_position_2 + beat_range && music_position < beat_position_2 + beat_range + miss_range) {
		return "Too late!";
	} else if (music_position >= beat_position_3 - beat_range - miss_range && music_position < beat_position_3 - beat_range) {
		return "Too early!";
	}else if (music_position > beat_position_3 + beat_range && music_position < beat_position_3 + beat_range + miss_range) {
		return "Too late!";
	} else if (music_position >= beat_position_4 - beat_range - miss_range && music_position < beat_position_4 - beat_range) {
		return "Too early!";
	}else if (music_position > beat_position_4 + beat_range && music_position < beat_position_4 + beat_range + miss_range) {
		return "Too late!";
	} else if (music_position >= beat_position_5 - beat_range - miss_range && music_position < beat_position_5 - beat_range) {
		return "Too early!";
	} else {
		return "Not in rhythm!";
	}
}
