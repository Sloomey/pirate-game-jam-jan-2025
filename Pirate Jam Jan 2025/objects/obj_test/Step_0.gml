/// @description 


// Gravity
vsp += grv;


// Click to shoot
if (mouse_check_button(mb_left)) || (keyboard_check(vk_space))
{
	vsp = -7;
}

// Collision

if (place_meeting(x, y + vsp, obj_wall)) 
{
	while (!place_meeting(x, y + sign(vsp), obj_wall))
	{
		y = y + sign(vsp);
	}
	
	vsp = 0;
}


y += vsp;