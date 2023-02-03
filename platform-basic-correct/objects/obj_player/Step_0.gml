/*
	WALK CONDITION BASIC
		
	Heirarchy: First collide and then move, if not collide{
	move
	}
	
sign = -1, 0 , 1 (transform variables)
*/
//Check
move = -keyboard_check(vk_left)+keyboard_check(vk_right);
hsp=move*spd; //3x1=3

//COLISION, GRAVITY && JUMP
// HORIZONTAL ROLE
if place_meeting(x+hsp,y,obj_block){
	//Colision X && Y
	while !place_meeting(x+sign(hsp),y,obj_block){
		x+=sign(hsp);
	}
	hsp=0;
}
//Left && Right walk
x+=hsp;

// VERTICAL colision
if place_meeting(x,y+vsp,obj_block){
	//Colision X && Y
	while !place_meeting(x,y+sign(hsp),obj_block){
		y+=sign(vsp);
	}
	vsp=0;
}
y+=vsp;
//JUMP
if place_meeting(x,y+1,obj_block){ //If don't touch obj block
	// && don't press space
	if keyboard_check_pressed(vk_space){
		vsp=jspd;
	}
}else{
	vsp+=grav;
}







