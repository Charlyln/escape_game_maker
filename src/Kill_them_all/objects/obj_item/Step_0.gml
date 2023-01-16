if (distance_to_point(obj_player.x, obj_player.y) < 150 && !moving_to_player) {
	player_direction = point_direction(x, y, obj_player.x, obj_player.y);
	if (player_direction > 180) {
		direction = player_direction - 180;
		image_angle = direction;
	} else {
		direction = player_direction + 180;
		image_angle = direction;
	}

	moving_to_player = true;

	_xx = x + lengthdir_x(10, image_angle);
	_yy = y + lengthdir_y(10, image_angle);

	move_towards_point(_xx, _yy, 3);

	alarm[0] = 10;
}

if (is_come_back) {
	move_towards_point(obj_player.x, obj_player.y, 10);
	direction = point_direction(x, y, obj_player.x, obj_player.y);
	show_debug_message(direction)
	image_angle = direction;
}

if (moving_to_player) {
	sprite_index = spr_item_moving;
} else if (global.beat) {
	sprite_index = spr_item_beat;
} else {
	sprite_index = spr_item;
}
