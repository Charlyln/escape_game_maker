with(other) {
hp = hp - (10 * obj_player.damage)

	if (!audio_is_playing(snd_fire)) {
		audio_play_sound(snd_fire, 1, false, 1)
	}
}



