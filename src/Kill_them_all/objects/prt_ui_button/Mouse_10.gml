if (can_tap && !is_hover) {
	audio_play_sound(snd_hover, 1, false);
	is_hover = true;
	show_debug_message("enter")
}
