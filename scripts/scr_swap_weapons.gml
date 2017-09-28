///scr_swap_weapons(new_weapon)
var new_weapon = argument0;
//swap attack weapon sprites
var temp = weapon_sprite;
weapon_sprite = new_weapon.sprite_index;
new_weapon.sprite_index = temp;

if(instance_exists(obj_player_stats)){
    //remove the bonus damage
    obj_player_stats.attack -= obj_player_stats.weapon_damage;
    //store the player weapon's damage
    var temp_damage = obj_player_stats.weapon_damage;
    //get other item damage
    var other_weapon_damage = new_weapon.weapon_damage;
    //add the bonus to the player and set the player's weapon damage
    obj_player_stats.attack += other_weapon_damage;
    obj_player_stats.weapon_damage = other_weapon_damage;
    //set the item damage to last weapon used by the player
    new_weapon.weapon_damage = temp_damage;
}

// swap weapon sprites
var tempSprite = sprite[RIGHT, CURRENT_WEAPON];
sprite[RIGHT, CURRENT_WEAPON] = new_weapon.spr_right;
new_weapon.spr_right = tempSprite;

var tempSprite = sprite[UP, CURRENT_WEAPON];
sprite[UP, CURRENT_WEAPON] = new_weapon.spr_up;
new_weapon.spr_up = tempSprite;

var tempSprite = sprite[LEFT, CURRENT_WEAPON];
sprite[LEFT, CURRENT_WEAPON] = new_weapon.spr_left;
new_weapon.spr_left = tempSprite;

var tempSprite = sprite[DOWN, CURRENT_WEAPON];
sprite[DOWN, CURRENT_WEAPON] = new_weapon.spr_down;
new_weapon.spr_down = tempSprite;


