action_back = function () {
	
	obj_player.pause = false;
	instance_activate_layer("EnemyLayer");
	instance_destroy(prt_tutoriel);
	instance_destroy(obj_button_pause_controls);

};
