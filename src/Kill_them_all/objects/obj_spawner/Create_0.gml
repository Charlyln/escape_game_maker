spawnrate = 100
alarm[0] = spawnrate
boss_1_is_drop = false

drop_enemy = function (drop_x, drop_y, enemy) {
	instance_create_layer(drop_x + range, drop_y + range, "EnemyLayer", enemy)
}

drop_boss = function (drop_x, drop_y, enemy) {
	instance_create_layer(drop_x, drop_y, "EnemyLayer", enemy)
}


