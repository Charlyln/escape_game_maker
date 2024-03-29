x_value = camera_get_view_x(view_camera[0])
y_value = camera_get_view_y(view_camera[0])

total_seconds = ceil(string(timer/room_speed))
secs = total_seconds mod 60;
time_str = string(total_seconds div 60);
timestr = string("{0}:{1}", time_str, secs)
global.timer = timestr

draw_set_font(fnt_1);
draw_set_color(c_white);
draw_text_transformed(x_value + camera_get_view_width(view_camera[0]) - 80, y_value + 80, timestr, 2, 2, 0);
