player_x = obj_player.x 
player_y = obj_player.y
range = random_range(-10, 10) * 100

//if (obj_player.level < 5 ) {
//		drop_enemy(player_x , player_y , obj_enemyspawn)
//} 
//else if (obj_player.level < 10) {
//		drop_enemy(player_x , player_y , obj_enemy_spawn_10)
//} else 

if (!boss_1_is_drop) {
	drop_enemy(player_x + 400, player_y - 200, obj_enemy_spawn_boss_1)
	boss_1_is_drop = true
	audio_stop_sound(snd_start);
	audio_play_sound(snd_boss_start, 2, true)
} else if (global.killed_boss == 1 && obj_player.level >= 11) {
		drop_enemy(player_x , player_y , obj_enemy_spawn_11)
		spawnrate = 30
} else if  (global.killed_boss == 1 && obj_player.level >= 15) {
		drop_enemy(player_x , player_y , obj_enemy_spawn_11)
		spawnrate = 10
}

alarm[0] = spawnrate
