///scr_shoot_state()
image_speed = .3;
//set attack animation to which sprite player is using
movement = SHOOT;
var xoffset = 0;
var yoffset = 0;
if(scr_animation_hit_frame(0)){
    switch(face){
        case LEFT:
            xoffset+=1;
            break;
        case UP:
            yoffset+=2;
            break;
        case RIGHT:
            xoffset-=1;
            yoffset +=2;
            break;
        case DOWN:
            yoffset-=1;
            break;
    }
    shoot_animation = instance_create(x + xoffset, y + yoffset+2, obj_bow_animation);
    shoot_animation.dir = face * 90;
    shoot_animation.image_angle = (face * 90);
    shoot_animation.face = face;
    shoot_animation.xoffset = xoffset;
    shoot_animation.yoffset = yoffset;
    //shoot_animation.sprite_index = weapon_sprite;
}

//create a projectile
if(scr_animation_hit_frame(2)){
    var p = instance_create(x, y, obj_projectile);
    var xforce = lengthdir_x(10, face * 90);
    var yforce = lengthdir_y(10, face * 90);
    p.creator = id;
    p.dir = face * 90;
    p.image_angle = p.dir;
    with(p){
        physics_apply_impulse(x+xoffset, y+yoffset, xforce, yforce);
    }
}

if(scr_animation_hit_frame(4)){
    instance_destroy(shoot_animation);
}
