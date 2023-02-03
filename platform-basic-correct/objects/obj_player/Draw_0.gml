//Draw itself
draw_self();

//Draw x position on plane
draw_set_color(c_white) //Color of draw
draw_text(x-25,y-100,"X: "+string(x));//This says upon object x position
draw_text(x-25,y-125,"Y: "+string(y));//This says upon object y position

//Verification of speed on keyboard on true or false( true=1 / false =0)
draw_text(x-5,y-64,move); //when pressed show



