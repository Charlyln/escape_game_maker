event_inherited()

total_hp = 100
hp = total_hp
spd = 1
is_boss = true
bullet_cooldown = 0
bullet_time_cooldown = 10
bullet_2_cooldown = 0
bullet_2_time_cooldown = 30
nbr_of_bullets = 24
circle_bullet_speed = 4
nbr_of_circle_bullet_shoot = 3




dead_action = function () {
	audio_play_sound(snd_boss_death, 5, false)
	global.killed_boss = global.killed_boss + 1
	obj_player.level += 1
}

