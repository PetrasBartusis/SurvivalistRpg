///scr_draw_silhoutte();
surface_set_target(surface);
//make the surface black
draw_clear(c_black);
//draw the player white
d3d_set_fog(true, c_white, 0, 1);
with(obj_player){
    draw_self();
}
d3d_set_fog(false, c_white, 0, 0);
//draw the tree black with an alpha of .5
with(obj_tree){
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_black, .5);
}

surface_reset_target();

// Draw the surface
draw_surface(surface, 0, 0);
