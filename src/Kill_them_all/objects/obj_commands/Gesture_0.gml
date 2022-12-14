

if (!instance_exists(obj_tuto_gif_surcharge)) {



if (instance_exists(obj_player)) {
	obj_player.pause = false
	instance_activate_layer("EnemyLayer");
}

instance_destroy()

} else if(instance_exists(obj_tuto_gif_surcharge)) {


	obj_player.pause = false
	instance_activate_layer("EnemyLayer");
instance_destroy(obj_tuto_gif_surcharge)
instance_destroy(obj_tuto_button)
instance_destroy()

}