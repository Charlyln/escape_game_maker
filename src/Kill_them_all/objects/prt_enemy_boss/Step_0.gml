event_inherited()

player_x = obj_player.x
player_y = obj_player.y



if (bullet_cooldown < 1) {
	instance_create_layer(x,y - 100, "BulletsLayer", obj_boss_bullet)
	bullet_cooldown = bullet_time_cooldown
}


if (bullet_2_cooldown < 1) {
	for (var i = -2 ; i < nbr_of_bullets; i += 1) {
			with (instance_create_layer(x + (i * obj_prt_bullet_enemy.bullet_var) ,y + (i * obj_prt_bullet_enemy.bullet_var),"BulletsLayer",obj_boss_bullet_2)) {
				direction = point_direction(x, y - 100, obj_player.x + (i * obj_prt_bullet_enemy.bullet_var), obj_player.y + (i * obj_prt_bullet_enemy.bullet_var));
			}
	}
	bullet_2_cooldown = bullet_2_time_cooldown
}


bullet_cooldown -= 1
bullet_2_cooldown -= 1




	