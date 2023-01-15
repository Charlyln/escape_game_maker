display_names = function (name, i) {
	
	if (global.name == name) {
	draw_set_color(global.color_primary)
	}
draw_text_transformed(x, y + i * 10, name, 0.75, 0.75, 0)
draw_text_transformed(x + 60, y+ i * 10, global.scores[i], 0.75, 0.75, 0)
draw_set_color(global.color_secondary)
};


draw_set_font(fnt_1)
draw_set_color(global.color_secondary)

draw_text_transformed(x + 30, y - 35, "Has finish game", 0.75, 0.75, 0)
draw_text_transformed(x, y - 20, "Name", 0.75, 0.75, 0)
draw_text_transformed(x + 60, y - 20, "Time", 0.75, 0.75, 0)

array_foreach(global.names, display_names);
