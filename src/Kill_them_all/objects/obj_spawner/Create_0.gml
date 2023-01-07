spawnrate = 80
alarm[0] = spawnrate
boss_1_is_drop = false



drop_enemy = function (drop_x, drop_y, enemy) {
	instance_create_layer(drop_x + range, drop_y + range, "EnemyLayer", enemy)
}