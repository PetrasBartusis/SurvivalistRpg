//scr_enemy_drop_loot();

/// Create the experience and health
var expr_object = instance_create(x, y, obj_expr);
expr_object.expr = expr_drop;
audio_play_sound(snd_enemy_die, 5, false);

// Drop a health pack
if(scr_chance(.5)){
    instance_create(x+random_range(-4,4), y + random_range(-4,4), obj_health);
}
