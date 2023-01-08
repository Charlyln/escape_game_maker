if (obj_player.xp > 0 || obj_player.level > 0) {
	player_x = obj_player.x;
	player_y = obj_player.y;
	range = random_range(-10, 10) * 100;

	if (obj_player.level < 1) {
		drop_enemy(player_x, player_y, obj_enemyspawn);
	} else if (obj_player.level >= 1 && obj_player.level < 2) {
		drop_enemy(player_x, player_y, obj_enemy_spawn_10);
		show_debug_message("obj_enemy_spawn_10");
	} else if (global.killed_boss == 1 && obj_player.level >= 5) {
		drop_enemy(player_x, player_y, obj_enemy_spawn_11);
		spawnrate = 30;
	} else if (global.killed_boss == 1 && obj_player.level >= 7) {
		drop_enemy(player_x, player_y, obj_enemy_spawn_11);
		spawnrate = 10;
	}

	alarm[0] = spawnrate;
}
alarm[0] = spawnrate;
