///scr_swap_weapons(new_weapon)
var new_weapon = argument0;
var temp = weapon_sprite;
weapon_sprite = new_weapon.sprite_index;
new_weapon.sprite_index = temp;

//swap weapon damage
var tempDamage = new_weapon.bonus_weapon_damage;
new_weapon.bonus_weapon_damage = bonus_weapon_damage;
bonus_weapon_damage = tempDamage;

//swap glow_size damage
var tempGlow = new_weapon.glow_size;
new_weapon.glow_size = weapon_glow_size;
weapon_glow_size = tempGlow;
