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

obj_music.beat_1_is_playing = true
obj_music.beat_2_is_playing = false
obj_music.beat_3_is_playing = false
obj_music.beat_4_is_playing = false
obj_music.beat_5_is_playing = false
obj_music.beat_6_is_playing = false
obj_music.beat_7_is_playing = false;
obj_music.beat_8_is_playing = false;
obj_music.beat_8_5_is_playing = false
obj_music.beat_9_is_playing = false;

obj_music.play_beat_7 = false
obj_music.play_beat_8 = false

obj_music.beat_dashing_is_playing = false
obj_music.is_change_perk_choice = false


}