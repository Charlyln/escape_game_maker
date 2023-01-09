event_inherited();

text_button = "No";
scale = 2

do_action_button = function () {
	
		audio_sound_gain(global.beat_1, 1, 0);
			audio_sound_gain(global.beat_2, 0, 0);
			audio_sound_gain(global.beat_3, 0, 0);
room_goto(1);	

//audio_play_sound(snd_music_1, 1, true)
};
