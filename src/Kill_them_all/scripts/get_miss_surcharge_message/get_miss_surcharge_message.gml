

function get_miss_surcharge_message (music_position) {
	
	interval = 0.5;
range = 0.07;
miss_range = 0.17;
music_length = 8;



 if (music_position < range + miss_range) {
	return "Too late";
} else if (music_position > interval * 1 - miss_range - range && music_position < interval * 1 - range) { 
	return "Too early";
} else if (music_position > interval * 1 + range && music_position < interval * 1 + range + miss_range) {
	return "Too late";
} else if (music_position > interval * 2 - miss_range - range && music_position < interval * 2 - range) {
	return "Too early";
} else if (music_position > interval * 2 + range && music_position < interval * 2 + range + miss_range) {
	return "Too late";
} else if (music_position > interval * 3 - miss_range - range && music_position < interval * 3 - range) {
	return "Too early";
} else if (music_position > interval * 3 + range && music_position < interval * 3 + range + miss_range) {
	return "Too late";
} else if (music_position > interval * 4 - miss_range - range && music_position < interval * 4 - range) {
	return "Too early";
}  else if (music_position > interval * 4 + range && music_position < interval * 4 + range + miss_range) {
	return "Too late";
} else if (music_position > interval * 5 - miss_range - range && music_position < interval * 5 - range) {
	return "Too early";
}else if (music_position > interval * 5 + range && music_position < interval * 5 + range + miss_range) {
	return "Too late";
} else if (music_position > interval * 6 - miss_range - range && music_position < interval * 6 - range) {
	return "Too early";
}  else if (music_position > interval * 6 + range && music_position < interval * 6 + range + miss_range) {
	return "Too late";
} else if (music_position > interval * 7 - miss_range - range && music_position < interval * 7 - range) {
	return "Too early";
} else if (music_position > interval * 7 + range && music_position < interval * 7 + range + miss_range) {
	return "Too late";
} else if (music_position > interval * 8 - miss_range - range && music_position < interval * 8 - range) {
	return "Too early";
}  else if (music_position > interval * 8 + range && music_position < interval * 8 + range + miss_range) {
	return "Too late";
} else if (music_position > interval * 9 - miss_range - range && music_position < interval * 9 - range) {
	return "Too early";
}  else if (music_position > interval * 9 + range && music_position < interval * 9 + range + miss_range) {
	return "Too late";
} else if (music_position > interval * 10 - miss_range - range && music_position < interval * 10 - range) {
	return "Too early";
}  else if (music_position > interval * 10 + range && music_position < interval * 10 + range + miss_range) {
	return "Too late";
} else if (music_position > interval * 11 - miss_range - range && music_position < interval * 11 - range) {
	return "Too early";
} else if (music_position > interval * 11 + range && music_position < interval * 11 + range + miss_range) {
	return "Too late";
} else if (music_position > interval * 12 - miss_range - range && music_position < interval * 12 - range) {
	return "Too early";
}  else if (music_position > interval * 12 + range && music_position < interval * 12 + range + miss_range) {
	return "Too late";
} else if (music_position > interval * 13 - miss_range - range && music_position < interval * 13 - range) {
	return "Too early";
} else if (music_position > interval * 13 + range && music_position < interval * 13 + range + miss_range) {
	return "Too late";
} else if (music_position > interval * 14 - miss_range - range && music_position < interval * 14 - range) {
	return "Too early";
} else if (music_position > interval * 14 + range && music_position < interval * 14 + range + miss_range) {
	return "Too late";
} else if (music_position > interval * 15 - miss_range - range && music_position < interval * 15 - range) {
	return "Too early";
} else if (music_position > interval * 15 + range && music_position < interval * 15 + range + miss_range) {
	return "Too late";
} else if (music_position > interval * 16 - miss_range - range && music_position < interval * 16 - range) {
	return "Too early";
}  else {
return "Follow the rhythm!"
}

}