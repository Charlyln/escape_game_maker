with (other) {
	if (!is_burned) {
		hp = hp - 3 * obj_player.damage;

		is_burned = true;
		
		is_hit = true;

		if (!audio_is_playing(snd_thunder)) {
			audio_play_sound(snd_thunder, 1, false, 1);
		}
	}
}
