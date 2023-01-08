if (!boss_1_is_drop && obj_player.level >= 2 && obj_player.level < 3) {
		instance_destroy(obj_enemy_spawn_10);
				instance_destroy(obj_enemyspawn);
		instance_destroy(prt_enemy_std);
		instance_destroy(obj_item);

		show_debug_message("boss");
		if (global.can_play_beat_3) {
			show_debug_message("drop boss");
			drop_boss(player_x + 200, player_y, obj_enemy_spawn_boss_1);
			boss_1_is_drop = true;
		}
	} 