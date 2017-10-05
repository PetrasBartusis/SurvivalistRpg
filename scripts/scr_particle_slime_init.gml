///scr_particle_slime_init();
// Initialize the slime particle
global.pt_slime = part_type_create();
var pt = global.pt_slime;

// Set the settings for the slime particle
part_type_shape(pt, pt_shape_square);
part_type_size(pt, .01, .02, 0, 0);
part_type_color2(pt, slime_green_light, slime_green_dark);
part_type_speed(pt, 1, 2, -.1, 0);
part_type_direction(pt, 0, 360, 0, 0);
part_type_gravity(pt, .2, 270);
part_type_life(pt, 10, 20);

