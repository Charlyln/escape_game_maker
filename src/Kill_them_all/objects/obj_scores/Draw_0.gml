


display_names = function (name, i) {
	
draw_text(x, y + i * 10, name)
draw_text(x + 100, y+ i * 10, global.scores[i])
};


draw_set_font(Font3)
draw_text(x, y - 30, "Name")
draw_text(x + 100, y - 30, "Level")
array_foreach(global.names, display_names);



