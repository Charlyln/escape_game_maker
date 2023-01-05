if (!surface_exists(surf)) {
	var _cw = camera_get_view_width(view_camera[0]);
	var _ch = camera_get_view_height(view_camera[0]);
	surf = surface_create(_cw, _ch);
	surface_set_target(surf);
	draw_set_colour(c_black);
	draw_set_alpha(0);
	draw_rectangle(0, 0, _cw, _cw, false);
	surface_reset_target();
} else {
	var _cw = camera_get_view_width(view_camera[0]);
	var _ch = camera_get_view_height(view_camera[0]);
	var _cx = camera_get_view_x(view_camera[0]);
	var _cy = camera_get_view_y(view_camera[0]);
	surface_set_target(surf);
	draw_set_color(c_black);
	draw_set_alpha(0.8);
	draw_rectangle(0, 0, _cw, _ch, 0);
	gpu_set_blendmode(bm_subtract);
	with (prt_lighting) {
		switch (object_index) {
			case obj_player:
				draw_sprite_ext(spr_Light_Bulb, 0, x - _cx, y - _cy, 8, 8, 0, c_white, 1);
				
				if (obj_prt_weapon.shooting) {
				draw_sprite_ext(spr_Light_Bulb, 0, x - _cx, y - _cy, 8, 8, 0, c_white, 1);
				draw_sprite_ext(spr_Light_Bulb, 0, x - _cx, y - _cy, 8, 8, 0, c_white, 1);
				}
				
				break;
				
				case obj_bullet_sec:
				draw_sprite_ext(spr_Light_Bulb, 0, x - _cx, y - _cy, 2, 2, 0, c_red , 1);

				break;
		}
	}
	gpu_set_blendmode(bm_normal);
	draw_set_alpha(1);
	surface_reset_target();
	draw_surface(surf, _cx, _cy);
}