function scr_Get_ScreenSize() {
	var Gui_pos = 1;

	if (display_Width == 2560  and display_Height == 1440 )   { Gui_pos = 2;    }   
	if (display_Width == 2560  and display_Height == 1000 )   { Gui_pos = 3;    }   
	if (display_Width == 1360  and display_Height == 768  )   { Gui_pos = 4;    }   
	if (display_Width == 3840  and display_Height == 2160 )   { Gui_pos = 5;    }   
	if (display_Width == 1680  and display_Height == 1050 )   { Gui_pos = 6;    }   
	if (display_Width == 1440  and display_Height == 900  )   { Gui_pos = 7;    }   
	if (display_Width == 1366  and display_Height == 768  )   { Gui_pos = 8;    }   
	if (display_Width == 1920  and display_Height == 1080 )   { Gui_pos = 9;    }   


	//  1920 x 1080 -> 62%   Aspec Ratio   16 : 9
	//  1366 x 768  -> 12%   Aspec Ratio   683 : 384
	//  2560 x 1440 -> 5%    Aspec Ratio   16 : 9
	//  1440 x 900  -> 3%    Aspec Ratio   16 : 10
	//  1680 x 1050 -> 2%    Aspec Ratio   56 : 35
	//  3840 x 2160 -> 2%    Aspec Ratio   16 : 9
	//  1360 x 768  -> 2%    Aspec Ratio   85 : 48
	//  2560 x 1080 -> 1%    Aspec Ratio   64 : 27



	return Gui_pos;


}
