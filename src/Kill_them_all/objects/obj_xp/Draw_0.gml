x_value = camera_get_view_x(view_camera[0]) + 5
y_value = camera_get_view_y(view_camera[0])
displayMessage = "Level " + string(obj_player.level) 
barWidth = camera_get_view_width(view_camera[0])
xpValue = obj_player.xp
scale = 3
draw_set_font(fnt_1);
draw_set_color(c_black)
draw_healthbar(x_value, y_value + 50, x_value + barWidth - 10 ,y_value + 5, xpValue, c_gray, c_white, c_white, 0, true, true)
draw_text_transformed(x_value + 100,y_value  + 30, displayMessage, scale, scale, 0)
