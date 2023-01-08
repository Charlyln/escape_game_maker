if (instance_exists(obj_player)) {
	move_towards_point(obj_player.x, obj_player.y, spd)
}



if (hp <= 0 && !is_dead) {
	is_dead = true;
	is_hit = false;
	audio_play_sound(snd_death, 5, false);
	instance_create_layer(x, y, "ItemLayer", obj_item);
	global.killed_enemies = global.killed_enemies + 1;
	alarm[1] = 25;
	dead_action()
}



if (is_dead) {
	spd = 0;
} else if (is_hit && !recovering) {
	alarm[0] = 20;
	spd = 0;
	recovering = true;
	if (is_burned) {
		alarm[2] = 150;
	}
}


if (!is_boss) {
if (is_dead) {
	sprite_index = sprite_death;
} else if (is_hit) {
	sprite_index = sprite_hit;
} else {
	sprite_index = sprite_move;
}


}
