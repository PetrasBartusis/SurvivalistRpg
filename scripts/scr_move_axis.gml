///scr_move_axis

//get a direction
var dir = point_direction(0, 0, xaxis, yaxis);
//get directional speed
var hspd = lengthdir_x(spd, dir);
var vspd = lengthdir_y(spd, dir);
//turn the enemy towards the player and check if it's not 0
if(hspd != 0){
    image_xscale = sign(hspd);
}
//set sprites to move
scr_get_face(dir);
movement = MOVE;
//move enemy object
phy_position_x += hspd;
phy_position_y += vspd;
