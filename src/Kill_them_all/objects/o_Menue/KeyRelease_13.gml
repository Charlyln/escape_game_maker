/// @description Action



switch (position) {

// Auto detect -> go into highest possible resolution
case 1:

display_Width  = display_get_width();
display_Height = display_get_height();


Aspect_Ratio_Width  = scr_Get_AsoectRatio_Return_Width();
Aspect_Ratio_Height = scr_Get_AsoectRatio_Return_Height();

// same here -> // EDIT ONLY HERE for ideal camera width and height
// 16 : 9 Ratio   
 if (Aspect_Ratio_Width == 16 and Aspect_Ratio_Height == 9) { 
	 camera_Show_Width  = 640;  // 40times  
     camera_Show_Height = 360;     }

// 16 : 10 Ratio 
 if (Aspect_Ratio_Width == 16 and Aspect_Ratio_Height == 10) { 
	 camera_Show_Width  = 640;  // 40times  
     camera_Show_Height = 400;     }

// 683 : 384 Ratio -> weird one
 if (Aspect_Ratio_Width == 683 and Aspect_Ratio_Height == 384) { 
	 camera_Show_Width  = 640;    // once  
     camera_Show_Height = 360;     }

// 56 : 35 Ratio -> weird one
 if (Aspect_Ratio_Width == 56 and Aspect_Ratio_Height == 35) { 
	 camera_Show_Width  = 672;     // 12times  
     camera_Show_Height = 420;     }

// 5 : 4
 if (Aspect_Ratio_Width == 5 and Aspect_Ratio_Height == 4) { 
	camera_Show_Width  = 500;     // 100times
     camera_Show_Height = 400;     }
	 
	 // assign o_Camera values
	 o_Camera.camera_Show_Width =  camera_Show_Width;
	 o_Camera.camera_Show_Height = camera_Show_Height;

  window_set_size(display_Width, display_Height );  // -> show without surface resize!!!!
  surface_resize(application_surface, display_Width, display_Height  );
alarm[0] = 1;

position = scr_Get_ScreenSize();
break;


//2560x1440 -> always take 16 by 9 ratio here
case 2: // same here -> // EDIT ONLY HERE for ideal camera width and height
     
Aspect_Ratio_Width  = scr_Get_AsoectRatio_Return_Width();
Aspect_Ratio_Height = scr_Get_AsoectRatio_Return_Height();	 
	 
	 camera_Show_Width  = 640;  // 40times  
     camera_Show_Height = 360;  
	 
	o_Camera.camera_Show_Width =  camera_Show_Width;
	 o_Camera.camera_Show_Height = camera_Show_Height;	 

  window_set_size(2560, 1440 );  // -> show without surface resize!!!!
  surface_resize(application_surface, 2560, 1440  );
alarm[0] = 1;
break;


//2560x1000 -> always take 64 by 27 ratio here
case 3: // same here -> // EDIT ONLY HERE for ideal camera width and height

Aspect_Ratio_Width  = scr_Get_AsoectRatio_Return_Width();
Aspect_Ratio_Height = scr_Get_AsoectRatio_Return_Height();

	 camera_Show_Width  = 640;     // 10times
     camera_Show_Height = 270;     
	 
		o_Camera.camera_Show_Width =  camera_Show_Width;
	 o_Camera.camera_Show_Height = camera_Show_Height; 

  window_set_size(2560, 1000 );  // -> show without surface resize!!!!
  surface_resize(application_surface, 2560, 1000  );
alarm[0] = 1;
break;


//1360x768 -> always take 85 by 48 ratio here
case 4: // same here -> // EDIT ONLY HERE for ideal camera width and height

Aspect_Ratio_Width  = scr_Get_AsoectRatio_Return_Width();
Aspect_Ratio_Height = scr_Get_AsoectRatio_Return_Height();

	 camera_Show_Width  = 595;  // 9times  
     camera_Show_Height = 432;  

	o_Camera.camera_Show_Width =  camera_Show_Width;
	 o_Camera.camera_Show_Height = camera_Show_Height;

  window_set_size(1360, 768 );  // -> show without surface resize!!!!
  surface_resize(application_surface, 1360, 768  );
alarm[0] = 1;
break;


//3840x2160 -> always take 16 by 9 ratio here
case 5: // same here -> // EDIT ONLY HERE for ideal camera width and height


Aspect_Ratio_Width  = scr_Get_AsoectRatio_Return_Width();
Aspect_Ratio_Height = scr_Get_AsoectRatio_Return_Height();

	 camera_Show_Width  = 640;  // 40times  
     camera_Show_Height = 360; 

	o_Camera.camera_Show_Width =  camera_Show_Width;
	 o_Camera.camera_Show_Height = camera_Show_Height;

  window_set_size(3840, 2160 );  // -> show without surface resize!!!!
  surface_resize(application_surface, 3840, 2160  );
alarm[0] = 1;
break;


//1680x1050 -> always 56 : 35 ratio here
case 6: // same here -> // EDIT ONLY HERE for ideal camera width and height


Aspect_Ratio_Width  = scr_Get_AsoectRatio_Return_Width();
Aspect_Ratio_Height = scr_Get_AsoectRatio_Return_Height();


	 camera_Show_Width  = 672;  // 12times  
     camera_Show_Height = 420;  

	o_Camera.camera_Show_Width =  camera_Show_Width;
	 o_Camera.camera_Show_Height = camera_Show_Height;


  window_set_size(1680, 1050 );  // -> show without surface resize!!!!
  surface_resize(application_surface, 1680, 1050  );
alarm[0] = 1;
break;



//1440x900 -> always take 16 by 10 ratio here
case 7: // same here -> // EDIT ONLY HERE for ideal camera width and height

Aspect_Ratio_Width  = scr_Get_AsoectRatio_Return_Width();
Aspect_Ratio_Height = scr_Get_AsoectRatio_Return_Height();

     camera_Show_Width  = 640;  // 40times  
     camera_Show_Height = 400;  
	 
		o_Camera.camera_Show_Width =  camera_Show_Width;
	    o_Camera.camera_Show_Height = camera_Show_Height; 

  window_set_size(1440, 900 );  // -> show without surface resize!!!!
  surface_resize(application_surface, 1440, 900  );
alarm[0] = 1;
break;






//1366x768 -> always take 16 by 9 ratio here
case 8: // same here -> // EDIT ONLY HERE for ideal camera width and height

Aspect_Ratio_Width  = scr_Get_AsoectRatio_Return_Width();
Aspect_Ratio_Height = scr_Get_AsoectRatio_Return_Height();


     camera_Show_Width  = 640;  // 40times  
     camera_Show_Height = 360;  
	 
	 
		o_Camera.camera_Show_Width =  camera_Show_Width;
	 o_Camera.camera_Show_Height = camera_Show_Height; 

  window_set_size(1366, 768 );  // -> show without surface resize!!!!
  surface_resize(application_surface, 1366, 768  );

break;


//1920x1080 -> always take 16 by 10 ratio here
case 9: // same here -> // EDIT ONLY HERE for ideal camera width and height


Aspect_Ratio_Width  = scr_Get_AsoectRatio_Return_Width();
Aspect_Ratio_Height = scr_Get_AsoectRatio_Return_Height();


	 camera_Show_Width  = 640;  // 40times  
     camera_Show_Height = 400; 

  window_set_size(1920, 1080 );  // -> show without surface resize!!!!
  surface_resize(application_surface, 1920, 1080  );

break;




//fullscreen
case 10:

if (window_get_fullscreen() == true) { window_set_fullscreen(false); fullscreen = 0; }
else {window_set_fullscreen(true);  fullscreen = 1;  }

break;

}

