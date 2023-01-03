xpDisplayX = camera_get_view_x(view_camera[0]) + 5
xpDisplayY = camera_get_view_y(view_camera[0])
displayMessage = "Level " + string(obj_player.level) 
barWidth = camera_get_view_width(view_camera[0])
xpValue = obj_player.xp
scale = 3
draw_set_font(Font3);
draw_set_color(c_black)
draw_healthbar(xpDisplayX, xpDisplayY + 50, xpDisplayX + barWidth - 10 ,xpDisplayY + 5, xpValue, c_gray, c_white, c_white, 0, true, true)
draw_text_transformed(xpDisplayX + 100,xpDisplayY  + 30, displayMessage, scale, scale, 0)
