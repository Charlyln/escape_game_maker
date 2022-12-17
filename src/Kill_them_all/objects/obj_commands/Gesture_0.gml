if (instance_exists(obj_player)) {
	obj_player.pause = false
	instance_activate_layer("EnemyLayer");
}

instance_destroy()
