function draw_grid() {
	w = 1;
	color = #333333

	draw_set_color(color);
	for (i = 0; i < room_height; i += 16) {
		draw_line_width(0, i, room_width, i, w);
	}

	for (i = 0; i < room_width; i += 16) {
		draw_line_width(i, 0, i, room_height, w);
	}
}
