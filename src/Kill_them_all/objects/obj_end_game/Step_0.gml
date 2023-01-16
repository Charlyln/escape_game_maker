if ( instance_exists(obj_enemy_boss_2) && !final_ended ) {
	if (obj_enemy_boss_2.hp <= 0) {

	obj_player.invulnerability = true
	x_view = camera_get_view_x(view_camera[0])
    y_view = camera_get_view_y(view_camera[0])
    w_view =  camera_get_view_width(view_camera[0]) 
    h_view =  camera_get_view_height(view_camera[0])
	
	obj_player.pause = true
	
	obj_player.x = x_view + (w_view / 2)
	obj_player.y = y_view + h_view - 100
	obj_player.moove_speed = 0
	
	instance_create_layer( obj_player.x, obj_player.y - 200, "lyr_commands", obj_final)
	
	range = 100
	for (i = 0; i < 20; i++) {
		x_range = irandom_range(-range * 5, range * 5)
		y_range = irandom_range(-range, range)
	 	instance_create_layer( obj_player.x + x_range, obj_player.y + y_range, "lyr_commands", obj_fake_player)
	}

	
	
	final_ended = true
	}
}

if (final_ended ) {
	
instance_destroy(obj_prt_bullet_enemy)
	instance_destroy(obj_item)
}













