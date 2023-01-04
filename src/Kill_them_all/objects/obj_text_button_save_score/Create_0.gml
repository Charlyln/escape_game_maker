event_inherited();

text_button = "Save";
scale = 4
can_tap = false

do_action_button = function () {
str = "str"
name = string(obj_input.message)
post = http_post_string("https://gamemakerapi.herokuapp.com/name/" + name + "/score/" + string(obj_player.level), str);

room_goto(1);
};


