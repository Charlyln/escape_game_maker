/// @description Setup

//gpu_set_texfilter(false); 




// camera / cut to show 
 // your ideal default width and height for 16:9,  
camera_Show_Width  = 480;  // EDIT ONLY HERE
camera_Show_Height = 270;  // EDIT ONLY HERE


/// Rest is auto


// auto grab values from user display!
display_Width  = display_get_width();
display_Height = display_get_height();

Aspect_Ratio_Width  = 16;  //default display ratio 16:9
Aspect_Ratio_Height = 9;

#region Compare resolutions of display and give back apsect ratio  Automatic


if (display_Width == 1024  and display_Height == 768  )  { Aspect_Ratio_Width = 4;   Aspect_Ratio_Height = 3;    }   // 14 + 15 inch monitor
if (display_Width == 1280  and display_Height == 800  )  { Aspect_Ratio_Width = 16;  Aspect_Ratio_Height = 10;   }
if (display_Width == 1280  and display_Height == 1024 )  { Aspect_Ratio_Width = 5;   Aspect_Ratio_Height = 4;    }   //17 + 19 inch monitor
if (display_Width == 1280  and display_Height == 720  )  { Aspect_Ratio_Width = 16;  Aspect_Ratio_Height = 9;    }  // Notebook
if (display_Width == 1360  and display_Height == 768  )  { Aspect_Ratio_Width = 85;  Aspect_Ratio_Height = 48;   }  // 1.77 -> 85 
if (display_Width == 1366  and display_Height == 768  )  { Aspect_Ratio_Width = 683; Aspect_Ratio_Height = 384;  }  // -> no chance
if (display_Width == 1440  and display_Height == 900  )  { Aspect_Ratio_Width = 16;  Aspect_Ratio_Height = 10;   }   //19 inch monitor
if (display_Width == 1536  and display_Height == 864  )  { Aspect_Ratio_Width = 16;  Aspect_Ratio_Height = 9;    }
if (display_Width == 1600  and display_Height == 900  )  { Aspect_Ratio_Width = 16;  Aspect_Ratio_Height = 9;    }
if (display_Width == 1680  and display_Height == 1050 )  { Aspect_Ratio_Width = 56;  Aspect_Ratio_Height = 35;   }  //22 inch monitor -> Weird ratio of 5,63
if (display_Width == 1920  and display_Height == 1080 )  { Aspect_Ratio_Width = 16;  Aspect_Ratio_Height = 9;    }
if (display_Width == 1920  and display_Height == 1200 )  { Aspect_Ratio_Width = 6;   Aspect_Ratio_Height = 1;    }
if (display_Width == 2560  and display_Height == 1080 )  { Aspect_Ratio_Width = 64;  Aspect_Ratio_Height = 27;   }
if (display_Width == 2560  and display_Height == 1440 )  { Aspect_Ratio_Width = 16;  Aspect_Ratio_Height = 9;    }  // WQHD Monitor
if (display_Width == 3440  and display_Height == 1440 )  { Aspect_Ratio_Width = 21;  Aspect_Ratio_Height = 9;    } // no hard aspect ratio
if (display_Width == 3840  and display_Height == 2160 )  { Aspect_Ratio_Width = 16;  Aspect_Ratio_Height = 9;    }




//extra not listed by survey displays
if (display_Width == 1600 and display_Height == 1200 )  { Aspect_Ratio_Width = 0;  Aspect_Ratio_Height = 0;   }  // 20 inch monitor
if (display_Width == 1400 and display_Height == 1050 )  { Aspect_Ratio_Width = 4;  Aspect_Ratio_Height = 3;   }  // 20 inch monitor
if (display_Width == 1152 and display_Height == 864  )  { Aspect_Ratio_Width = 4;  Aspect_Ratio_Height = 3;   }  // 21 inch monitor
if (display_Width == 5120 and display_Height == 2880 )  { Aspect_Ratio_Width = 16; Aspect_Ratio_Height = 9;   }   // 5k monitor
if (display_Width == 5120 and display_Height == 2160 )  { Aspect_Ratio_Width = 21; Aspect_Ratio_Height = 9;   }   // 5k monitor, no hard aspect ratio
if (display_Width == 4500 and display_Height == 3000 )  { Aspect_Ratio_Width = 21; Aspect_Ratio_Height = 9;   }   // surface studio
if (display_Width == 4096 and display_Height == 3072 )  { Aspect_Ratio_Width = 4;  Aspect_Ratio_Height = 3;   }   
if (display_Width == 4096 and display_Height == 2160 )  { Aspect_Ratio_Width = 19; Aspect_Ratio_Height = 10;  } // no hard aspect ratio
if (display_Width == 3840 and display_Height == 2400 )  { Aspect_Ratio_Width = 16; Aspect_Ratio_Height = 10;  } // no hard aspect ratio
if (display_Width == 3840 and display_Height == 1600 )  { Aspect_Ratio_Width = 12; Aspect_Ratio_Height = 5;   } // Ultra HD Blu-ray size
if (display_Width == 3200 and display_Height == 2400 )  { Aspect_Ratio_Width = 4;  Aspect_Ratio_Height = 3;   }
if (display_Width == 3200 and display_Height == 2048 )  { Aspect_Ratio_Width = 25; Aspect_Ratio_Height = 16;  }
if (display_Width == 3200 and display_Height == 2000 )  { Aspect_Ratio_Width = 3;  Aspect_Ratio_Height = 2;   }   // surface book
if (display_Width == 2880 and display_Height == 1800 )  { Aspect_Ratio_Width = 16; Aspect_Ratio_Height = 10;  }  //15.4 inch
if (display_Width == 2880 and display_Height == 1440 )  { Aspect_Ratio_Width = 18; Aspect_Ratio_Height = 9;   }  //15.4 inch
if (display_Width == 2560 and display_Height == 2048 )  { Aspect_Ratio_Width = 18; Aspect_Ratio_Height = 9;   } 

#endregion


// EDIT ONLY HERE -> other default resolutions for cameras with diffrent aspect ratio!
#region  Other aspec ratio? Then use this other camera width and height, almost ideal height and width


// 16 : 9 Ratio  // 40times, 16*40 = 640 and 16*9 = 360 as an example
 if (Aspect_Ratio_Width == 16 and Aspect_Ratio_Height == 9) { 
	 camera_Show_Width  = 640;  // EDIT ONLY HERE 
     camera_Show_Height = 360;  // EDIT ONLY HERE   
	 }

// 16 : 10 Ratio 
 if (Aspect_Ratio_Width == 16 and Aspect_Ratio_Height == 10) { 
	 camera_Show_Width  = 640;  // EDIT ONLY HERE 
     camera_Show_Height = 400;  // EDIT ONLY HERE
	 }

// 683 : 384 Ratio -> weird one 16:9
 if (Aspect_Ratio_Width == 683 and Aspect_Ratio_Height == 384) { 
	 camera_Show_Width  = 640;    // EDIT ONLY HERE
     camera_Show_Height = 360;   // EDIT ONLY HERE
	 }

// 56 : 35 Ratio -> weird one
 if (Aspect_Ratio_Width == 56 and Aspect_Ratio_Height == 35) { 
	 camera_Show_Width  = 672;     // EDIT ONLY HERE 
     camera_Show_Height = 420;     // EDIT ONLY HERE
	 }

// 5 : 4
 if (Aspect_Ratio_Width == 5 and Aspect_Ratio_Height == 4) { 
	 camera_Show_Width  = 500;     // EDIT ONLY HERE
     camera_Show_Height = 400;     // EDIT ONLY HERE
	
	}


// 64 : 27
 if (Aspect_Ratio_Width == 64 and Aspect_Ratio_Height == 27) { 
	 camera_Show_Width  = 640;     // EDIT ONLY HERE
     camera_Show_Height = 270;     // EDIT ONLY HERE
	 }

// 85 : 48
 if (Aspect_Ratio_Width == 64 and Aspect_Ratio_Height == 27) { 
	 camera_Show_Width  = 595;     // EDIT ONLY HERE
     camera_Show_Height = 432;     // EDIT ONLY HERE
	 }



	 
#endregion

// full display size set window and application surface  
window_set_size(display_Width, display_Height );  
surface_resize(application_surface, display_Width, display_Height); 


// short delay after that center camera
alarm[0] = 1;  


target = obj_player;   // stick to target, can be changed dynamically to jump to other places


// zoom cap ->   e// EDIT ONLY HERE or delete if no zoom needed
zoomMax_Width = camera_Show_Width + (Aspect_Ratio_Width*50);
zoomMin_Width = Aspect_Ratio_Width*10;