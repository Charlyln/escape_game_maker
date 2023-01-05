	try {
if (ds_map_find_value(async_load, "id") == res) {
	show_debug_message("2");
	if (ds_map_find_value(async_load, "status") == 0) {
		show_debug_message("1");
		r_str = ds_map_find_value(async_load, "result");
		show_debug_message(r_str);
	
			var resultMap = json_decode(r_str);
			show_debug_message(resultMap);
			var list = ds_map_find_value(resultMap, "scores");
			//var size = ds_list_size(list);
			for (var n = 0; n < ds_list_size(list); n++) {
				var map = ds_list_find_value(list, n);
				var curr = ds_map_find_first(map);
				while (is_string(curr)) {
					global.names[n] = ds_map_find_value(map, "name");
					global.scores[n] = ds_map_find_value(map, "score");
					curr = ds_map_find_next(map, curr);
				}
			}
			ds_map_destroy(resultMap);
		

		show_debug_message(global.names);
		show_debug_message(global.scores);
	} else {
		r_str = "null";
	}
}
} catch (e) {
			show_debug_message("Couldn't parse JSON"+ e.message);
			global.names = ["Error server"]
			global.scores = [""]
		}
//var r_str2 = "null";
//if (ds_map_find_value(async_load, "id") == post) {
//	if (ds_map_find_value(async_load, "status") == 0) {
//		r_str2 = ds_map_find_value(async_load, "result");
//	}
//}
