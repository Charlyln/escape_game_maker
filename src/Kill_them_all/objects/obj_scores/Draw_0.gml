
//global.name = "charly"

display_names = function (name, i) {
	
	if (global.name == name) {
	draw_set_color(global.color_primary)
	}
draw_text_transformed(x, y + i * 10, name, 0.75, 0.75, 0)
draw_text_transformed(x + 60, y+ i * 10, global.scores[i], 0.75, 0.75, 0)
draw_set_color(c_black)
};


draw_set_font(Font3)
draw_set_color(c_black)

draw_text_transformed(x + 30, y - 50, "Scores", 0.75, 0.75, 0)
draw_text_transformed(x, y - 30, "Name", 0.75, 0.75, 0)
draw_text_transformed(x + 60, y - 30, "Level", 0.75, 0.75, 0)

array_foreach(global.names, display_names);
