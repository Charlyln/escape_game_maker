function scr_Get_AsoectRatio_Return_Width() {


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

	return Aspect_Ratio_Width;


}
