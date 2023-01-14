event_inherited()

total_hp = 5 // TOREST
hp = total_hp
spd = 1
is_boss = true
bullet_cooldown = 0
bullet_time_cooldown = 10
bullet_2_cooldown = 0
bullet_2_time_cooldown = 30
nbr_of_bullets = 24
circle_bullet_speed = 3
nbr_of_circle_bullet_shoot = 3

//alarm[3] = 0

image_xscale = 5
image_yscale =image_xscale 

// Sprites 
sprite_hit = spr_enemy_boss_walk71
sprite_move = spr_enemy_boss_walk71
sprite_death= spr_enemy_boss_walk71
sprite_attack = spr_enemy_boss_walk7172


dead_action = function () {
	audio_play_sound(snd_boss_death, 5, false)
	global.killed_boss = global.killed_boss + 1
	obj_player.level += 1
}

