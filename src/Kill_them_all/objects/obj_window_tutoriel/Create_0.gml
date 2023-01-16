instance_create_layer(410,230,"lyr_window_button", obj_text_button_back)

tutoriel_buttons = [
	obj_text_button_tutoriel_beat,
	obj_text_button_tutoriel_overload,
	obj_text_button_tutoriel_dash,
	obj_text_button_tutoriel_special,
	obj_text_button_tutoriel_loot,
];

create_buttons = function (button, i) {
	instance_create_layer(x - 120, y - 80 + i * 40, "lyr_window_button", button);
};


array_foreach(tutoriel_buttons, create_buttons);





