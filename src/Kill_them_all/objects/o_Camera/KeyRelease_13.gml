/// @description target swap

if (instance_exists(O_Tank) and instance_exists(o_OtherTarget)) {


  switch (target) { 
	  
	  case O_Tank: target = o_OtherTarget; break;
	  case o_OtherTarget: target = O_Tank; break;	  
	  
	  }

} 