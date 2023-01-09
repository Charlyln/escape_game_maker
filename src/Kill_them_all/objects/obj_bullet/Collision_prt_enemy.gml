with(other) {
hp = hp - (1 * obj_player.damage)
if (is_boss) {
//audio_play_sound(snd_hit, 1, false, 3)
}else {
audio_play_sound(snd_hit, 1, false, 1)
}
	
	
	is_hit = true
}

instance_destroy()









