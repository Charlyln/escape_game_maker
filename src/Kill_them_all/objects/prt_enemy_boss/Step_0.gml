event_inherited();

player_x = obj_player.x;
player_y = obj_player.y;

if (bullet_cooldown < 1) {
	instance_create_layer(x, y - 100, "BulletsLayer", obj_boss_bullet);
	bullet_cooldown = bullet_time_cooldown;
}

if (bullet_2_cooldown < 1) {
	audio_play_sound(snd_boss_death, 5, false);

	var dirIncrement = 360 / nbr_of_bullets;
	var projectile;
	var dir = 0;

	repeat (nbr_of_bullets) {
	    projectile = instance_create_layer(x + lengthdir_x(16, dir), y + lengthdir_y(16, dir),"BulletsLayer", obj_boss_bullet_2);
	    projectile.speed = circle_bullet_speed;
	    projectile.direction = dir;
	    dir += dirIncrement;
	}

	bullet_2_cooldown = bullet_2_time_cooldown;
}

bullet_cooldown -= 1;
bullet_2_cooldown -= 1;

if (is_dead) {
	sprite_index = sprite_death;
	spd = 0;
} else if (bullet_2_cooldown < 70) {
	sprite_index = sprite_attack;
	spd = 0;
} else if (is_hit) {
	spd = 0;
	sprite_index = sprite_hit;
} else {
	sprite_index = sprite_move;
	spd = 1;
}
