xpDisplayX = camera_get_view_x(view_camera[0])
xpDisplayY = camera_get_view_y(view_camera[0])

str_level = string("Level: {0}", obj_player.level)
str_timer = string("Timer: {0}", global.timer)
str_enemies_killed = string("Ennemies killed: {0}", global.killed_enemies)
str_bosses_killed = string("Bosses killed: {0}", global.killed_boss)

str_damage = string("Damage: {0}", global.damage)
str_projectile = string("Projectile: {0}", global.projectile)
str_bullet_speed = string("Bullet speed: {0}", global.bullet_speed)
str_player_speed = string("Player speed: {0}", global.player_speed)


draw_text(xpDisplayX + 480, xpDisplayY + 200, str_level);
draw_text(xpDisplayX + 480, xpDisplayY + 240, str_timer);
draw_text(xpDisplayX + 480, xpDisplayY + 280, str_enemies_killed);
draw_text(xpDisplayX + 480, xpDisplayY + 320, str_bosses_killed);


draw_text(xpDisplayX + 480, xpDisplayY + 380, str_player_speed);
draw_text(xpDisplayX + 480, xpDisplayY + 420, str_projectile);
draw_text(xpDisplayX + 480, xpDisplayY + 460, str_bullet_speed);
draw_text(xpDisplayX + 480, xpDisplayY + 500, str_damage);