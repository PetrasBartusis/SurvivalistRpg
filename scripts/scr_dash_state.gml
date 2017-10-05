///scr_dash_state
movement = DASH;
if(len == 0) {
    dir = face * 90;
}

image_speed = .5;

len = spd*3;

// Get the hspd and vspd
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

// Move
phy_position_x += hspd;
phy_position_y += vspd;

// Create the dash effect
/*var dash = instance_create(x, y, obj_dash_effect);
dash.sprite_index = sprite_index;
dash.image_index = image_index;*/

