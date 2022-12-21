moove_speed = 1.5

fire_rate = 0.4
damage = 1
xp = 0
level = 0
pause = false

invulnerability = false
dead = false
dying = false
dashing = false
dash_direction = ""
start_dashing = false
dash_speed = 10
dash_duration = 15
dash_cooldown = 130
can_dash = true

global.killed_enemies = 0
global.killed_boss = 0
global.damage = ""
global.projectile = ""
global.bullet_speed = ""
global.player_speed = ""




audio_play_sound(snd_hello_robot, 1, false)

switch (global.setup_weapon)
{
    case "gun":
		instance_create_layer(x,y, "BulletsLayer", obj_gun)
    break;

    case "shotgun":
		instance_create_layer(x,y, "BulletsLayer", obj_shotgun)
    break;
	
	  case "ar":
		instance_create_layer(x,y, "BulletsLayer", obj_ar)
    break;

    default:
        instance_create_layer(x,y, "BulletsLayer", obj_gun)
}











perks = [
	obj_power_speed,
	obj_power_damage,
	obj_power_bullet_speed,
	obj_power_projectile
]

range = 3

perk_choice = function (xpDisplayX, xpDisplayY) {
	
	random1 = irandom(range)
    random2 = irandom(range)
	
	while (random1 == random2) {
		random2 = irandom(range)
	}
	
	create_perk(xpDisplayX + 150, xpDisplayY + 400, perks[random1])
	create_perk(xpDisplayX  + 766, xpDisplayY + 400, perks[random2])
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
