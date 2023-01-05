
draw_set_color(global.color_primary)
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_font(fnt_1);

	x_value = camera_get_view_x(view_camera[0]);
	y_value = camera_get_view_y(view_camera[0]);

draw_text_transformed(x_value + 960, y_value + 50, text_button, scale, scale, 0)



