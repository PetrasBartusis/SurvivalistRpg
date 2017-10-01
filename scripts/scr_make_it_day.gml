///scr_make_it_day();
if(instance_exists(obj_night_cycle)){
    if(obj_night_cycle.isNight){
        obj_night_cycle.change = 0.05;
    }
}
