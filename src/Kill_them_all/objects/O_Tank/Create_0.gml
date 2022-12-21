hp = 5;

right = 0;
left = 0;
down = 0;
up = 0;
shoot = 0;

// Movement
hSpeed = 0;
vSpeed = 0;

//diagonal
speed_ = 0;
MoveSpeed = 2;
DiagonalSpeed = round(MoveSpeed * sqrt(2)/ 2);



//shoot timer
shoot_possible = true;
shoot_time = 40;
shoot_timer = shoot_time;



invincible = false;
invincible_time = 30;
invincible_timer  = invincible_time;	
swap_ColorTimer = 6;

playSoundOnce = true;

// shootrange Upgrade
shootRamge = 40;
shootSpeed = 2;



// reload
ammoMax = 7;
ammo = ammoMax;
ammoReload_Time = 180;
ammoReload_Timer = ammoReload_Time;