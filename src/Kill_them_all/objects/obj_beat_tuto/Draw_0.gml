if (!global.beat_tutoriel_reload) {
	draw_set_color(c_white);
	draw_text_ext_transformed(obj_player.x, obj_player.y - 150, "Shoot and try to reload by clicking on the beat", 10, 300, 2, 2, 0);
} else if (!global.beat_tutoriel_dash && alarm[0] < 1) {
	draw_set_color(c_white);
	draw_text_ext_transformed(obj_player.x, obj_player.y - 150, "Try to dash on the beat", 10, 300, 2, 2, 0);
} else if (!global.beat_tutoriel_special && alarm[0] < 1) {
	draw_set_color(c_white);
	draw_text_ext_transformed(obj_player.x, obj_player.y - 150, "Try to shoot special on the beat", 10, 300, 2, 2, 0);
}

if (global.beat_tutoriel_reload && alarm[0] > 0 && !global.beat_tutoriel_dash && !global.beat_tutoriel_special) {
	if (global.beat) {
		draw_set_color(c_white);
		draw_text_ext_transformed(obj_player.x, obj_player.y - 150, "Good !", 10, 300, 3, 3, 0);
		show_debug_message(alarm[0])
	}
} else if (global.beat_tutoriel_dash && alarm[0] > 0 && !global.beat_tutoriel_special) {
	if (global.beat) {
		draw_set_color(c_white);
		draw_text_ext_transformed(obj_player.x, obj_player.y - 150, "You got it !!", 10, 300, 4, 4, 0);
	}
} else if (global.beat_tutoriel_special && alarm[0] > 0) {
	if (global.beat) {
		draw_set_color(c_white);
		draw_text_ext_transformed(obj_player.x, obj_player.y - 150, "You're a beat god !!!", 10, 300, 5, 5, 0);
	}
}

