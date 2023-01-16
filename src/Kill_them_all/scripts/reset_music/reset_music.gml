function reset_music(){
	show_debug_message("reset_music")
audio_sound_gain(global.beat_1, 1, 0);
audio_sound_gain(global.beat_2, 0, 0);
audio_sound_gain(global.beat_3, 0, 0);
audio_sound_gain(global.beat_4, 0, 0);
audio_sound_gain(global.beat_5, 0, 0);
audio_sound_gain(global.beat_6, 0, 0);
audio_sound_gain(global.beat_7, 0, 0);
audio_sound_gain(global.beat_8, 0, 0);
audio_sound_gain(global.beat_8_5, 0, 0);
audio_sound_gain(global.beat_9, 0, 0);

beat_1_is_playing = true
beat_2_is_playing = false
beat_3_is_playing = false
beat_4_is_playing = false
beat_5_is_playing = false
beat_6_is_playing = false
beat_7_is_playing = false;
beat_8_is_playing = false;
beat_8_5_is_playing = false
beat_9_is_playing = false;

play_beat_7 = false
play_beat_8 = false

beat_dashing_is_playing = false
is_change_perk_choice = false


}