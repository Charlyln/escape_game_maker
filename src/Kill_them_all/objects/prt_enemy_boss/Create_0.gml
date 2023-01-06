event_inherited()

total_hp = 2000
hp = total_hp
spd = 1
is_boss = true
bullet_cooldown = 0
bullet_time_cooldown = 10
bullet_2_cooldown = 0
bullet_2_time_cooldown = 500
nbr_of_bullets = 32
circle_bullet_speed = 5

image_xscale = 5
image_yscale =image_xscale 

// Sprites 
sprite_hit = spr_enemy_boss_hit
sprite_move = spr_enemy_boss_walk
sprite_death= spr_enemy_boss_attack
sprite_attack = spr_enemy_boss_attack


dead_action = function () {
	audio_play_sound(snd_boss_death, 5, false)
	global.killed_boss = global.killed_boss + 1
	obj_player.level += 1
}

