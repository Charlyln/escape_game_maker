moove_speed = 2
moove_speed_malus = 0

fire_rate = 0.4
damage = 1
xp = 0
pv = 5
level = 7 //restore
pause = false


image_xscale = 2
image_yscale = image_xscale

invulnerability = false
is_hit = false
dead = false
dying = false
dashing = false
dash_direction = ""
press_dash = false
dash_speed = 10
dash_duration = 10
dash_beat_duration = 30
beat_dashing = false
dash_cooldown = 10
can_dash = true
instances_created = false
is_perk_choice = false

global.killed_enemies = 0
global.killed_boss = 0
global.damage = ""
global.projectile = ""
global.bullet_speed = ""
global.player_speed = ""

spr_dance = spr_player_dance
spr_no_dance = spr_player_no_dance
spr_hit = spr_player_hit
spr_dash_up = spr_player_dash_up
spr_dash_down = spr_player_dash_down
spr_dash_right = spr_player_dash_right
spr_dash_left = spr_player_dash_left
spr_dash_left_down = spr_player_dash_left_down
spr_dash_left_up = spr_player_dash_left_up
spr_dash_right_down = spr_player_dash_right_down
spr_dash_right_up = spr_player_dash_right_up
spr_walk = spr_player_walk
spr_idle = spr_player_idle
spr_dead = spr_player_dead
spr_death = spr_player_death



switch (global.setup_weapon)
{
    case "gun":
		instance_create_layer(x,y, "lyr_weapon", obj_gun)
    break;

    case "shotgun":
		instance_create_layer(x,y, "lyr_weapon", obj_shotgun)
    break;
	
	  case "ar":
		instance_create_layer(x,y, "lyr_weapon", obj_ar)
    break;

    default:
        instance_create_layer(x,y, "lyr_weapon", obj_gun)
}











perks = [
	obj_power_speed,
	obj_power_damage,
	//obj_power_bullet_speed,
	obj_power_projectile
]

range = 2

perk_choice = function (x_value, y_value) {
	
	random1 = irandom(range)
    random2 = irandom(range)
	
	while (random1 == random2) {
		random2 = irandom(range)
	}
	
	margin = camera_get_view_width(view_camera[0]) / 2
	
	create_perk(x_value + margin - 300, y_value + 400, perks[random1])
	create_perk(x_value  + margin + 300, y_value + 400, perks[random2])
}


create_perk = function (x_value, y_value, obj) {
	instance_create_layer(x_value, y_value, "lyr_powers", obj)
}

press = function (key) {
	if keyboard_check(ord(key)) return true
}
get_dash_direction = function (up, left, down, right) {
	if (up && (!left && !right )) return "up"
	if (down && (!left && !right )) return "down"
	if (right && (!up && !down )) return "right"
	if (left && (!up && !down )) return "left"
	
	if (left && down) return "left-down"
	if (left && up) return "left-up"
	if (right && down) return "right-down"
	if (right && up) return "right-up"

}
