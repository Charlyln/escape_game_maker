event_inherited();

text_button = "Save";
scale = 4
can_tap = false

do_action_button = function () {
str = "str"
name = string(obj_input.message)
global.name = string(obj_input.message)
post = http_post_string("https://gamemakerapi.herokuapp.com/name/" + name + "/score/" + string(obj_player.level), str);
	audio_sound_gain(global.beat_1, 1, 0);
			audio_sound_gain(global.beat_2, 0, 0);
			audio_sound_gain(global.beat_3, 0, 0);
room_goto(1);	
//audio_play_sound(snd_music_1, 1, true)
};


