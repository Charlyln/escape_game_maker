xpDisplayX = camera_get_view_x(view_camera[0]) + 50;
xpDisplayY = camera_get_view_y(view_camera[0]) + 50;

if (instance_exists(prt_tuto_text) && instance_exists(prt_tuto_gif)) {
	instance_destroy(prt_tuto_text);
	instance_destroy(prt_tuto_gif);

}

instance_create_layer(xpDisplayX + 600, xpDisplayY + 100, "lyr_window_2", obj_text);