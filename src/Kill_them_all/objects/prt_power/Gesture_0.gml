obj_player.pause = false
obj_player.is_perk_choice = false
instance_activate_all();
instance_destroy(prt_power);

if (obj_player.level >= 2 && obj_player.level < 3) {
		instance_destroy(obj_enemy_spawn_10);
				instance_destroy(obj_enemyspawn);
		instance_destroy(prt_enemy_std);
		instance_destroy(obj_item);	
}