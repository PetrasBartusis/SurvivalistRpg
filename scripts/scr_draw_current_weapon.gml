///scr_draw_current_weapon();
/*if(instance_exists(obj_player)){
    if(obj_player.in_combat and obj_player.movement != ATTACK){
        var toDraw = true;
        var xx = obj_player.x;
        var yy = obj_player.y;
        switch(obj_player.face){
            case RIGHT:
                yy+=4;
                xx-=1;
                depth = -y - 10;
                break;
            case UP:
                xx+=3;
                yy+=2;
                depth = - y + 10;
                break;
            case LEFT:
                yy+=2;
                depth = -y + 10;
                break;
            case DOWN:
                yy+=4;
                xx-=5;
                depth = -y - 5;
                break;
        }
        x = xx;
        y = yy;
        visible = false;
        sprite_index = obj_player.sprite[obj_player.face, CURRENT_WEAPON];
    } else {
        visible = false;
    }
} else {
    visible = false;
}*/

