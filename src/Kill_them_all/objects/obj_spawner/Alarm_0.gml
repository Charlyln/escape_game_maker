if (obj_player.xp > 0 || obj_player.level > 0) {
	player_x = obj_player.x;
	player_y = obj_player.y;
	range_x = random_range(-10, 10) * 100;
	range_y = random_range(-5, 5) * 100;

	if (obj_player.level < 1) {
		drop_enemy(player_x, player_y, obj_enemyspawn);
	} else if (obj_player.level >= 1 && obj_player.level < 2) {
		drop_enemy(player_x, player_y, obj_enemy_spawn_10);
	} else if (obj_player.level >= 3 && obj_player.level < 4) {
		drop_enemy(player_x, player_y, obj_enemy_spawn_11);
	} else if (obj_player.level >= 4 && obj_player.level < 5) {
		drop_enemy(player_x, player_y, obj_enemy_spawn_11);
	range_x = random_range(-10, 10) * 100;
	range_y = random_range(-5, 5) * 100;
		drop_enemy(player_x, player_y, obj_enemy_spawn_12);
	} else if (obj_player.level >= 5 && obj_player.level < 6) {
		drop_enemy(player_x, player_y, obj_enemy_spawn_12);
		spawnrate = 100
	} else if (obj_player.level >= 6 && obj_player.level < 7) {
		drop_enemy(player_x, player_y, obj_enemy_spawn_12);
		range_x = random_range(-10, 10) * 100;
		range_y = random_range(-5, 5) * 100;
		drop_enemy(player_x, player_y, obj_enemy_spawn_13);
	}
}
alarm[0] = spawnrate;
