draw_self();

if (is_hover) {
	draw_set_color(global.color_hover);
} else {
	draw_set_color(global.color_primary);
}

draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_font(fnt_1);

draw_text_transformed(x, y, text_button, scale, scale, 0);
