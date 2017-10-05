///scr_particle_blood_init();
// Initialize the blood particle
global.pt_blood = part_type_create();
var pt = global.pt_blood;

// Set the settings for the blood particle
part_type_shape(pt, pt_shape_square);
part_type_size(pt, .01, .02, 0, 0);
part_type_color2(pt, c_red, c_maroon);
part_type_speed(pt, 1, 2, -.1, 0);
part_type_direction(pt, 0, 360, 0, 0);
part_type_gravity(pt, .2, 270);
part_type_life(pt, 10, 20);

