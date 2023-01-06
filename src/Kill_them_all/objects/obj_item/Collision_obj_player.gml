with(other){
	if (obj_player.level < 2) xp = xp + 10
	else if (obj_player.level < 5) xp = xp + 5
	else if (obj_player.level < 7) xp = xp + 3
	else if (obj_player.level < 10) xp = xp + 2
	else if (obj_player.level >= 10) xp = xp + 1
	audio_play_sound(snd_loot, false, 0.4)
}

instance_destroy()


