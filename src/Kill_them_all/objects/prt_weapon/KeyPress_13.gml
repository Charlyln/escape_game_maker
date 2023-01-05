show_debug_message("send")
res = http_get("https://gamemakerapi.herokuapp.com/scores");


show_debug_message("cc")

//var str = "name=" + "charly" + "&score=" + "100";

//namearray = ["charly"]
//scorearay = ["100"]
var hiscore_map, str;
hiscore_map = ds_map_create();


ds_map_add(hiscore_map, "charly", 1);

str = "str"





//object = ["coucou"]
post = http_post_string("https://gamemakerapi.herokuapp.com/name/charly/score/100", str);

ds_map_destroy(hiscore_map);


show_debug_message("jj")








