/// @description fullscreen toggle
// set fullscreen
if (window_get_fullscreen() == true) { window_set_fullscreen(false); }
else {window_set_fullscreen(true);   }



var displaySize = string (display_get_width() ) + " x " + string (display_get_height() ) + " -> Display size (" + string (Aspect_Ratio_Width) + ":" + string (Aspect_Ratio_Height) + ")";



var WindowSize = string (window_get_width() ) + " x " + string (window_get_height() ) + "  -> Window size";



var cameraSize = string (camera_Show_Width ) + " x " + string (camera_Show_Height ) + "  -> Camera/Zoom size";


var aspectRatio =  string (Aspect_Ratio_Width) + ":" + string (Aspect_Ratio_Height) + " -> display ratio";


var fullScreen = "Fulscreen: " + string (window_get_fullscreen());




show_debug_message(displaySize)
show_debug_message(WindowSize)
show_debug_message(cameraSize)
show_debug_message(aspectRatio)
show_debug_message(fullScreen)



