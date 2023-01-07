if (instance_exists(prt_weapon)) {
	if (global.beat && prt_weapon.reloading) {
		draw_sprite(spr_reload, -1, obj_player.x - 150, obj_player.y);
	}
}
