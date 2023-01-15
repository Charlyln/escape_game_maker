event_inherited()

if (bullet_cooldown < 1 && global.beat && obj_player.level >= 5) {
	instance_create_layer(x, y, "BulletsLayer", obj_enemy_bullet);
	bullet_cooldown = bullet_time_cooldown;
}

bullet_cooldown -= 1;