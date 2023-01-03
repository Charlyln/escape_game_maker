
draw_set_color(global.color_primary)
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_font(Font3);

	xpDisplayX = camera_get_view_x(view_camera[0]);
	xpDisplayY = camera_get_view_y(view_camera[0]);

draw_text_transformed(xpDisplayX + 960, xpDisplayY + 50, text_button, scale, scale, 0)



