if (!invulnerability) {
	dying = true
	pause = true
	instance_deactivate_all(true);
	alarm[3]= 30
	audio_play_sound(snd_player_death, 2, false, 1)
	sprite_index = spr_player_death
	
}




