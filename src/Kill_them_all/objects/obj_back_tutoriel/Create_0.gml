action_back = function () {
	instance_destroy(prt_button_tutoriel);

	if (instance_exists(prt_tuto_text) && instance_exists(prt_tuto_gif)) {
		instance_destroy(prt_tuto_text);
		instance_destroy(prt_tuto_gif);
	}
};
