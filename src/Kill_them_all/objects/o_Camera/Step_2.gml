/// @description camera moving

//actual_mouse_x = window_mouse_get_x();
//actual_mouse_y = window_mouse_get_y();

//window_center(); delete if not needed, lets the window always stick to the middle
camera_set_view_size(view_camera[0], camera_Show_Width, camera_Show_Height   );  // Zoom, change width and height of camera


// moving of the camera according to the target set and the level border
if (instance_exists(target)) { 
	
	// get x and y position of target and don't show anything outside of room
	var cameraX =  clamp  (target.x - camera_Show_Width/2,  0, room_width  - camera_Show_Width   );
	var cameraY =  clamp  (target.y - camera_Show_Height/2, 0, room_height - camera_Show_Height );	
	
	
	// get current value of camera to get smooth value between old position and target position
	var current_x = camera_get_view_x (view_camera[0]);
	var current_y = camera_get_view_y (view_camera[0]);	
	
	var SmoothScrollSpeed = 0.1;  // 

	// Smooth scrollspeed and set new positon of camera
	camera_set_view_pos(view_camera[0], 
			lerp( current_x, cameraX, SmoothScrollSpeed  ),
			lerp( current_y, cameraY, SmoothScrollSpeed  ) );	
	

	
	
	
	}
	
	
/// Zoom	with keyboard up and down, change here for other input

    // zoom out
	if ( keyboard_check(vk_up) and zoomMax_Width > (camera_Show_Width + Aspect_Ratio_Width)  ) {
	camera_Show_Width  += Aspect_Ratio_Width;
    camera_Show_Height += Aspect_Ratio_Height ;

	}
	
    // zoom in
	if ( keyboard_check(vk_down)  and zoomMin_Width < (camera_Show_Width - Aspect_Ratio_Width)  ) {
	camera_Show_Width  -= Aspect_Ratio_Width;
    camera_Show_Height -= Aspect_Ratio_Height;

	}	
	




