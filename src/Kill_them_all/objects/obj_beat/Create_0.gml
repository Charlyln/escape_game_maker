global.beat_1 = audio_play_sound(snd_beat_1, 1, true, 1)
global.beat_2 = audio_play_sound(snd_beat_2, 2, true, 0)
global.beat_3 = audio_play_sound(snd_beat_3, 3, true, 0)

global.beat_dash = audio_play_sound(snd_dash_beat, 1, true, 0)
global.beat_transition = audio_play_sound(snd_beat_transition, 1, true, 0)

global.beat = false
global.music_position = 0

global.beat_loop = 0
global.beat_loop_reload = false

global.human_beat_miss = false
global.human_beat = false 

global.can_play_beat_3 = false



beat_position_1 = 0;
beat_position_2 = 0.55;
beat_position_3 = 1.08;
beat_position_4 = 1.62;
beat_position_5 = 2.157;

beat_range = 0.03;
miss_range = 0.1;

human_beat_range = 0.1;
human_miss_range = 0.1;

human_beat_position_1 = 0;
human_beat_position_2 = 0.50;
human_beat_position_3 = 1.05;
human_beat_position_4 = 1.62;
human_beat_position_5 = 2.13;