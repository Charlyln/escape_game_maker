if (global.setup_weapon == weapon_name) {
	instance_destroy(obj_selected_item)
instance_create_layer(x, y, "lyr_selection", obj_selected_item)
}
