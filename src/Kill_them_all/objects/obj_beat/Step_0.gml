music_position = audio_sound_get_track_position(global.music_2);

interval = 0.5;
range = 0.07;
miss_range = 0.1;
music_length = 8;
//<= >=
if (music_position <= range) {
	global.beat = true;
} else if (music_position < range + miss_range) {
	global.beat_miss = "Too late";
} else if (music_position > interval * 1 - miss_range - range && music_position < interval * 1 - range) { 
	global.beat_miss = "Too early";
} else if (music_position >= interval * 1 - range && music_position <= interval * 1 + range) {
	global.beat = true;
} else if (music_position > interval * 1 + range && music_position < interval * 1 + range + miss_range) {
	global.beat_miss = "Too late";
} else if (music_position > interval * 2 - miss_range - range && music_position < interval * 2 - range) {
	global.beat_miss = "Too early";
} else if (music_position >= interval * 2 - range && music_position <= interval * 2 + range) {
	global.beat = true;
} else if (music_position > interval * 2 + range && music_position < interval * 2 + range + miss_range) {
	global.beat_miss = "Too late";
} else if (music_position > interval * 3 - miss_range - range && music_position < interval * 3 - range) {
	global.beat_miss = "Too early";
} else if (music_position >= interval * 3 - range && music_position <= interval * 3 + range) {
	global.beat = true;
} else if (music_position > interval * 3 + range && music_position < interval * 3 + range + miss_range) {
	global.beat_miss = "Too late";
} else if (music_position > interval * 4 - miss_range - range && music_position < interval * 4 - range) {
	global.beat_miss = "Too early";
} else if (music_position >= interval * 4 - range && music_position <= interval * 4 + range) {
	global.beat = true;
} else if (music_position > interval * 4 + range && music_position < interval * 4 + range + miss_range) {
	global.beat_miss = "Too late";
} else if (music_position > interval * 5 - miss_range - range && music_position < interval * 5 - range) {
	global.beat_miss = "Too early";
} else if (music_position >= interval * 5 - range && music_position <= interval * 5 + range) {
	global.beat = true;
} else if (music_position > interval * 5 + range && music_position < interval * 5 + range + miss_range) {
	global.beat_miss = "Too late";
} else if (music_position > interval * 6 - miss_range - range && music_position < interval * 6 - range) {
	global.beat_miss = "Too early";
} else if (music_position >= interval * 6 - range && music_position <= interval * 6 + range) {
	global.beat = true;
} else if (music_position > interval * 6 + range && music_position < interval * 6 + range + miss_range) {
	global.beat_miss = "Too late";
} else if (music_position > interval * 7 - miss_range - range && music_position < interval * 7 - range) {
	global.beat_miss = "Too early";
} else if (music_position >= interval * 7 - range && music_position <= interval * 7 + range) {
	global.beat = true;
} else if (music_position > interval * 7 + range && music_position < interval * 7 + range + miss_range) {
	global.beat_miss = "Too late";
} else if (music_position > interval * 8 - miss_range - range && music_position < interval * 8 - range) {
	global.beat_miss = "Too early";
} else if (music_position >= interval * 8 - range && music_position <= interval * 8 + range) {
	global.beat = true;
} else if (music_position > interval * 8 + range && music_position < interval * 8 + range + miss_range) {
	global.beat_miss = "Too late";
} else if (music_position > interval * 9 - miss_range - range && music_position < interval * 9 - range) {
	global.beat_miss = "Too early";
} else if (music_position >= interval * 9 - range && music_position <= interval * 9 + range) {
	global.beat = true;
} else if (music_position > interval * 9 + range && music_position < interval * 9 + range + miss_range) {
	global.beat_miss = "Too late";
} else if (music_position > interval * 10 - miss_range - range && music_position < interval * 10 - range) {
	global.beat_miss = "Too early";
} else if (music_position >= interval * 10 - range && music_position <= interval * 10 + range) {
	global.beat = true;
} else if (music_position > interval * 10 + range && music_position < interval * 10 + range + miss_range) {
	global.beat_miss = "Too late";
} else if (music_position > interval * 11 - miss_range - range && music_position < interval * 11 - range) {
	global.beat_miss = "Too early";
} else if (music_position >= interval * 11 - range && music_position <= interval * 11 + range) {
	global.beat = true;
} else if (music_position > interval * 11 + range && music_position < interval * 11 + range + miss_range) {
	global.beat_miss = "Too late";
} else if (music_position > interval * 12 - miss_range - range && music_position < interval * 12 - range) {
	global.beat_miss = "Too early";
} else if (music_position >= interval * 12 - range && music_position <= interval * 12 + range) {
	global.beat = true;
} else if (music_position > interval * 12 + range && music_position < interval * 12 + range + miss_range) {
	global.beat_miss = "Too late";
} else if (music_position > interval * 13 - miss_range - range && music_position < interval * 13 - range) {
	global.beat_miss = "Too early";
} else if (music_position >= interval * 13 - range && music_position <= interval * 13 + range) {
	global.beat = true;
} else if (music_position > interval * 13 + range && music_position < interval * 13 + range + miss_range) {
	global.beat_miss = "Too late";
} else if (music_position > interval * 14 - miss_range - range && music_position < interval * 14 - range) {
	global.beat_miss = "Too early";
} else if (music_position >= interval * 14 - range && music_position <= interval * 14 + range) {
	global.beat = true;
} else if (music_position > interval * 14 + range && music_position < interval * 14 + range + miss_range) {
	global.beat_miss = "Too late";
} else if (music_position > interval * 15 - miss_range - range && music_position < interval * 15 - range) {
	global.beat_miss = "Too early";
} else if (music_position >= interval * 15 - range && music_position <= interval * 15 + range) {
	global.beat = true;
} else if (music_position > interval * 15 + range && music_position < interval * 15 + range + miss_range) {
	global.beat_miss = "Too late";
} else if (music_position > interval * 16 - miss_range - range && music_position < interval * 16 - range) {
	global.beat_miss = "Too early";
} else if (music_position >= music_length - range) {
	global.beat = true;
} else {
	global.beat = false;
}
global.music_position = music_position;

show_debug_message( music_position)
show_debug_message( global.beat)
show_debug_message( "---------------")

