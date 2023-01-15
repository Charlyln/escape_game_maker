event_inherited();

player_x = obj_player.x;
player_y = obj_player.y;

if (bullet_cooldown < 1 && global.beat && hp < total_hp / 2 ) {
	instance_create_layer(x, y, "BulletsLayer", obj_boss_bullet);
	bullet_cooldown = bullet_time_cooldown;
}

if (bullet_2_cooldown < 1 && global.beat && nbr_of_circle_bullet_shoot > 0 && global.boss_can_shoot) {
	var dirIncrement = 360 / nbr_of_bullets;
	var projectile;
	var dir = 0;

	repeat (nbr_of_bullets) {
		if (prt_enemy_boss.nbr_of_circle_bullet_shoot < 2) {
			projectile = instance_create_layer(x + lengthdir_x(16, dir), y + lengthdir_y(16, dir), "BulletsLayer", obj_boss_bullet_2);
		} else {
			projectile = instance_create_layer(x + lengthdir_x(16, dir), y + lengthdir_y(16, dir), "BulletsLayer", obj_boss_bullet_3);
		}

		projectile.speed = circle_bullet_speed;
		projectile.direction = dir;
		dir += dirIncrement;
	}

	bullet_2_cooldown = bullet_2_time_cooldown;
	nbr_of_circle_bullet_shoot -= 1;

	if (nbr_of_circle_bullet_shoot < 1) {
		audio_play_sound(snd_boss_cymbal, 1, false);
	} else {
		audio_play_sound(snd_boss_drum, 1, false);
	}
} else if (bullet_2_cooldown < 1 && global.beat && nbr_of_circle_bullet_shoot < 1 && alarm[3] < 1) {
	alarm[3] = 50;
}

bullet_cooldown -= 1;
bullet_2_cooldown -= 1;

if (is_dead) {
	sprite_index = sprite_death;
	spd = 0;
} else if (global.beat) {
	sprite_index = sprite_attack;
	spd = 0;
} else if (is_hit) {
	spd = 1;
	sprite_index = sprite_hit;
} else {
	sprite_index = sprite_move;
	spd = 1;
}
