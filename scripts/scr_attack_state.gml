///scr_attack_state
image_speed = .65;
//set attack animation to which sprite player is using
movement = ATTACK;

if(scr_animation_hit_frame(2)){
    var attack_animation = instance_create(x, y, obj_weapon_animation);
    attack_animation.dir = face * 90;
    attack_animation.image_angle = (face * 90) + 135;
    attack_animation.sprite_index = weapon_sprite;
}

if(scr_animation_hit_frame(3)){
    var xx = 0;
    var yy = 0;
    switch(face){
        case DOWN:
            xx = x;
            yy = y + 26;
            break;
        case UP:
            xx = x;
            yy = y - 28;
            break;
        case RIGHT:
            xx = x + 25;
            yy = y - 6;
            break;
        case LEFT:
            xx = x - 25;
            yy = y - 6;
            break;
    }
    audio_play_sound(snd_sword_attack, 8, false);
    var damage = instance_create(xx, yy, obj_damage);
    damage.creator = id;
    damage.damage = obj_player_stats.attack;
}

// Get direction
dir = face * 90;
len = 1;
// Get the length
// Get the hspd and vspd
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

// Move
phy_position_x += hspd;
phy_position_y += vspd;

