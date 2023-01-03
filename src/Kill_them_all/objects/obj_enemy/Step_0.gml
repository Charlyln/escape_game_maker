if (instance_exists(obj_player)) {
	move_towards_point(obj_player.x, obj_player.y, spd)
}

//image_angle = direction

if (hp <= 0) {
	audio_play_sound(snd_death, 5, false)
	instance_create_layer(x, y, "ItemLayer", obj_item)
	global.killed_enemies = global.killed_enemies + 1 
	instance_destroy()
}

if (obj_player.level >= 10 ) {
instance_destroy()
}
