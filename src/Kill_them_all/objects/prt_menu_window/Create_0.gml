x_var = x
y_var = y
layer_window = ""
layer_inputs = ""

create_buttons = function (button, i) {
		show_debug_message(i)
	instance_create_layer(x_var + 50, y_var + 50 + i * 100, layer_inputs, button);
};

open_window = function (x_pos, y_pos, layer_1, layer_2) {
	x_var = x_pos
	y_var = y_pos
	layer_window = layer_1
	layer_inputs = layer_2
	show_debug_message("1")
	instance_create_layer(x_pos, y_pos,  layer_window, obj_window);
		show_debug_message("2")
	instance_create_layer(x_pos + 1000, y_pos + 550, layer_inputs, back_button);
		show_debug_message("3")
	array_foreach(tutoriel_buttons, create_buttons);
};