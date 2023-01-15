if (!boss_1_is_drop && obj_player.level >= 2 && obj_player.level < 3) {
	instance_destroy(obj_enemy_spawn_10);
	instance_destroy(obj_enemyspawn);
	instance_destroy(prt_enemy_std);
	instance_destroy(obj_item);
	if (global.beat_loop == 4 && global.music_position >= 2.1) {
		drop_boss(obj_player.x + 200, obj_player.y, obj_enemy_spawn_boss_1);
		boss_1_is_drop = true;
	}
}

if (!boss_2_is_drop && obj_player.level >= 7) {
	instance_destroy(obj_enemy_spawn_11);
	instance_destroy(obj_enemy_spawn_12);
	instance_destroy(prt_enemy_std);
	instance_destroy(obj_item);
	if (global.beat_loop == 4 && global.music_position >= 2.1) {
		drop_boss(obj_player.x + 200, obj_player.y, obj_enemy_spawn_boss_2);
		boss_2_is_drop = true;
	}
}
