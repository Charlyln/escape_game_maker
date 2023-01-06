x_var = camera_get_view_x(view_camera[0]) + 50
y_var = camera_get_view_y(view_camera[0]) + 100



for (i = 0; i < obj_player.pv; i++) {
draw_sprite(spr_heart,1,x_var + i * 40, y_var)
}





