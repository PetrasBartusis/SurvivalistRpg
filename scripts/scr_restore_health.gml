///scr_restore_health()
if(instance_exists(obj_player_stats)){
    with(obj_player_stats){
        hp = min(hp + 5, maxhp);
        var damageNumber = instance_create(other.x, other.y, obj_health_restore_numbers);
        damageNumber.damage = string(5);
        audio_play_sound(snd_hp, 6, false);
    }
}
