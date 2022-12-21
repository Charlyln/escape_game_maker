
input();
// regualar movement
hSpeed = right - left;
vSpeed = down - up;


#region Animation
if (right) {  image_index = 0;  }
if (left)  {  image_index = 1;  }
if (up)    {  image_index = 2;  }
if (down)  {  image_index = 3;  }

if (right == true and up == true )   {  image_index = 0;  }
if (right == true and down == true ) {  image_index = 0;  }

if (left == true and up == true )   {  image_index = 1;  }
if (left == true and down == true ) {  image_index = 1;  }


#endregion

#region collision


	if (left) { 
		 //if (place_meeting(x- MoveSpeed, y, o_Wall)) { hSpeed = 0;  }
	 
		 }
	

	if (right) { 
	
		 //if (place_meeting(x+ MoveSpeed, y, o_Wall)) { hSpeed = 0;  } 
		 
		 }
	
	
	if (up) { 
	
		//if (place_meeting(x , y - MoveSpeed, o_Wall)) { vSpeed = 0;  }
	
		}
	
	if (down) { 
	
	    //if (place_meeting(x , y + MoveSpeed, o_Wall)) { vSpeed = 0;  } 
		
		}	
                    
					
				




#endregion	
// diagonal run speed
if (hSpeed != 0 and vSpeed != 0) {   speed_ = DiagonalSpeed;  }
  else {  speed_ = MoveSpeed;		}


x +=  hSpeed * speed_;
y +=  vSpeed * speed_; 



if (shoot_possible == true  and shoot == true and ammo > 0) {  shoot_possible = false; ammo = ammo -1;
	
	
	
	//case 0: with instance_create_layer(x + 16 , y - 6, "Instances", o_Bullet_Tank  ) {  hSpeed =   other.shootSpeed;   }   break;
	//case 1: with instance_create_layer(x - 16 , y - 6, "Instances", o_Bullet_Tank  ) {  hSpeed = -other.shootSpeed;  }   break;	

    //case 2: with instance_create_layer(x + 1,  y - 18, "Instances", o_Bullet_Tank  ) {  vSpeed = -other.shootSpeed;  }   break;	
    //case 3: with instance_create_layer(x -2 ,  y + 18, "Instances", o_Bullet_Tank  ) {  vSpeed =   other.shootSpeed;  }   break;	
	
	

	}
	
// reload
if (shoot_possible == false) { 
		
		shoot_timer--;
		if (shoot_timer <= 0) {       shoot_timer = shoot_time;  shoot_possible = true;      }
				}
				
				
	

if (invincible == true) { 
	
	if (playSoundOnce == true) { 
		playSoundOnce = false;
		//audio_play_sound(snd_Ouch, 1, 0);
		                       }

	
	
	swap_ColorTimer--;
	if (swap_ColorTimer <= 0) {   swap_ColorTimer = 6;
		
		switch(image_blend) { 
			case c_white: image_blend =  c_red;   break;
			case c_red:   image_blend =  c_white; break;			
			}
		
		}
	
	
	invincible_timer--;
	if (invincible_timer <= 0) {  invincible_timer  = invincible_time; invincible = false;  image_blend =  c_white;  }
	
	}
				

	if (hp <= 0) {
		  room_restart();
		}
		
		
		
if (ammo <= 0) { 
	
	ammoReload_Timer--;
	if (ammoReload_Timer <= 0) {  	ammoReload_Timer = ammoReload_Time; ammo = ammoMax;  }

	
	
	}		