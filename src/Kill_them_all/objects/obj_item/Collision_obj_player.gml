with(other){
	//if (obj_player.level < 2) xp = xp + 10
	//else if (obj_player.level < 5) xp = xp + 8
	//else if (obj_player.level < 7) xp = xp + 6
	//else if (obj_player.level < 10) xp = xp + 4
	//else if (obj_player.level >= 10) xp = xp + 3
	 xp = xp + 50
	audio_play_sound(snd_loot, false, 0.4)
}

instance_destroy()


