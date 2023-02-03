/*
	WALK CONDITION BASIC
*/
//Left
if keyboard_check(vk_left){
	x-=spd;
}
//Right
if keyboard_check(vk_right){
	x+=spd;
}
/*
	In X(horizontal role), minus is left and plus is right, like a cartesian plan
		In programation on GMS:
			For make some assignment, the order: XorY +or- = number
*/

/*
	Gravity, Colide and Jump
*/
//Gravity and colide
if !place_meeting(x,y+1,obj_block){
	//If dont touch floor
	vspeed+=0.8
}else{
	//If dont fall down speed is 0
	vspeed=0;
	pulos=1;
	
	//Jump and DB-Jump
	if keyboard_check_pressed(vk_space) && pulos>0{
	vspeed=-12;
	pulos-=1;
	}
}

