///scr_equip_ranged_weapon();
if(instance_exists(obj_player)){
    obj_player.bow_sprite = ds_grid_get(playerInventory, 5, itemSelected);
    obj_player.bonus_ranged_weapon_damage = ds_grid_get(playerInventory, 6, itemSelected);
}
