x_var = x
y_var = y
layer_window = ""
layer_inputs = ""

create_buttons = function (button, i) {
	instance_create_layer(x -100, y -150 + i * 100, layer_inputs, button);
};

open_window = function (x_pos, y_pos, layer_1, layer_2) {
	x_var = x_pos
	y_var = y_pos
	layer_window = layer_1
	layer_inputs = layer_2
	instance_create_layer(x_pos, y_pos,  layer_window, obj_window);
	instance_create_layer(x_pos + 300, y_pos + 200, layer_inputs, back_button);
	array_foreach(tutoriel_buttons, create_buttons);
};