if (global.beat_tutoriel_is_over && !item_is_drop) {

instance_create_layer(obj_player.x + 300, obj_player.y, "ItemLayer" , obj_item)
item_is_drop = true

} 