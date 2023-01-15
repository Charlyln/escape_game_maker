with (other) {
	if (!is_burned) {
		hp = hp - 3 * obj_player.damage;

		is_burned = true;
		
		is_hit = true;
	}
}
