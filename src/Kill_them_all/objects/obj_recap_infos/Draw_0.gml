x_value = camera_get_view_x(view_camera[0])
y_value = camera_get_view_y(view_camera[0])

str_level = string("Level: {0}", obj_player.level)
str_timer = string("Timer: {0}", global.timer)
str_enemies_killed = string("Ennemies killed: {0}", global.killed_enemies)
str_bosses_killed = string("Bosses killed: {0}", global.killed_boss)

str_damage = string("Damage: {0}", global.damage)
str_projectile = string("Projectile: {0}", global.projectile)
str_bullet_speed = string("Bullet speed: {0}", global.bullet_speed)
str_player_speed = string("Player speed: {0}", global.player_speed)



draw_set_halign(fa_left);
draw_text_transformed(x_value + 480, y_value + 200, str_level,scale, scale, 0);
draw_text_transformed(x_value + 480, y_value + 240, str_timer,scale, scale, 0);
draw_text_transformed(x_value + 480, y_value + 280, str_enemies_killed,scale, scale, 0);
draw_text_transformed(x_value + 480, y_value + 320, str_bosses_killed,scale, scale, 0);


draw_text_transformed(x_value + 480, y_value + 380, str_player_speed,scale, scale, 0);
draw_text_transformed(x_value + 480, y_value + 420, str_projectile,scale, scale, 0);
draw_text_transformed(x_value + 480, y_value + 460, str_bullet_speed,scale, scale, 0);
draw_text_transformed(x_value + 480, y_value + 500, str_damage,scale, scale, 0);