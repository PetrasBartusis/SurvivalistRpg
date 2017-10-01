///scr_move_state
movement = MOVE;

//check if player is dashing
if(obj_input.dash_key){
    var xdir = lengthdir_x(8, face * 90);
    var ydir = lengthdir_y(8, face * 90);
    var speaker = instance_place(x + xdir, y + ydir, obj_speaker);
    if(speaker != noone){
        // Talk to it
        with (speaker) {
            if(!instance_exists(dialog)){
                dialog = instance_create(x + xoffset, y + yoffset, obj_dialog);
                dialog.text = text;
            } else {
                dialog.text_page++;
                dialog.text_count = 0;
                if(dialog.text_page > array_length_1d(dialog.text) - 1){
                    with(dialog){
                        instance_destroy();
                    }
                }
            }
        }
    } else if(obj_player_stats.stamina >= DASH_COST){
        // Dash
        state = scr_dash_state;
        alarm[0] = room_speed/6;
        obj_player_stats.stamina -= DASH_COST;
        obj_player_stats.alarm[0] = room_speed;
    }
}

//check if player is dashing
if(obj_input.attack_key){
    //start attack animation from the start
    image_index = 0;
    state = scr_attack_state;
}

//check if player is dashing
if(obj_input.spell_key){
    //start shoot animation from the start
    image_index = 0;
    state = scr_shoot_state;
}

//check if player is dashing
if(obj_input.swap_key){
    var nearest_weapon = instance_nearest(x, y, obj_weapon_item);
    if(place_meeting(x, y + 4, nearest_weapon)){
        scr_swap_weapons(nearest_weapon);
    }
    var nearest_bedroll = instance_nearest(x, y, obj_bedroll);
    if(place_meeting(x + 15, y + 15, nearest_bedroll)){
        scr_make_it_day();
    }
}

// Get direction
dir = point_direction(0, 0, obj_input.xaxis, obj_input.yaxis);

// Get the length
if(obj_input.xaxis == 0 and obj_input.yaxis == 0){
    len = 0;
    } else {
    len = spd;
    scr_get_face(dir);
}

// Get the hspd and vspd
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

// Move
phy_position_x += hspd;
phy_position_y += vspd;

// Control the sprite
image_speed = .3;
if(len == 0){
    movement = IDLE;
    isMoving = false;
    alarm[1] = 0;
    image_speed = .03;
} else { // if moving, play sounds
    //play the first footstep sound if player is not moving yet
    if(!isMoving){
        audio_play_sound(snd_footstep2, 2, false);
    }
    isMoving = true;
    if(alarm[1] <= 0){
        alarm[1] = room_speed * .35;
    }
}
