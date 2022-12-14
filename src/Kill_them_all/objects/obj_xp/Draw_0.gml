xpDisplayX = camera_get_view_x(view_camera[0]) + 10
xpDisplayY = camera_get_view_y(view_camera[0])
displayMessage = "Level " + string(obj_player.level) 
barWidth = camera_get_view_width(view_camera[0])
xpValue = obj_player.xp

draw_set_font(ft_1);
draw_healthbar(xpDisplayX, xpDisplayY + 50, xpDisplayX+barWidth -20 ,xpDisplayY + 10, xpValue, c_gray, c_white, c_white, 0, true, true)
draw_text_colour(xpDisplayX + 50,xpDisplayY  + 15,displayMessage, c_black, c_black, c_black, c_black, 1);
