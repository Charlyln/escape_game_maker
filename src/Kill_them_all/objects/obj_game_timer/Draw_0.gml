xpDisplayX = camera_get_view_x(view_camera[0])
xpDisplayY = camera_get_view_y(view_camera[0])

total_seconds = ceil(string(timer/room_speed))
secs = total_seconds mod 60;
time_str = string(total_seconds div 60);
timestr = string("{0}:{1}", time_str, secs)
global.timer = timestr

draw_set_font(ft_1);
draw_text_colour(xpDisplayX + window_get_width() - 100, xpDisplayY + 60, timestr, c_white, c_white, c_white, c_white, 1);
