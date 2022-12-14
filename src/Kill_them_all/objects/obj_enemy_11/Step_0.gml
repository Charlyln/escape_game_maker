if (instance_exists(obj_player)) {
	move_towards_point(obj_player.x, obj_player.y, spd)
}



if (hp <= 0) {
	audio_play_sound(snd_death, 5, false)
	instance_destroy()
	instance_create_layer(x, y, "ItemLayer", obj_item)
}