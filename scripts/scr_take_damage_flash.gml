//scr_take_damage_flash();
if (flash) {
    image_alpha = 0.5;
    d3d_set_fog(true, c_white, 0, 0);
    draw_self();
    d3d_set_fog(false, c_white, 0, 0);
    image_alpha = 1;
    flash = false;
} else {
    draw_self();
}
