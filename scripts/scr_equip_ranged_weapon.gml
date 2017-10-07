///scr_equip_ranged_weapon();
if(instance_exists(obj_player)){
    for(i = 0; i < ds_grid_height(playerInventory); i++){
        if(obj_player.bow_sprite == ds_grid_get(playerInventory, 5, i)){
            ds_grid_set(playerInventory, 9, i, false);
        }
    }
    obj_player.bow_sprite = ds_grid_get(playerInventory, 5, itemSelected);
    obj_player.bonus_ranged_weapon_damage = ds_grid_get(playerInventory, 6, itemSelected);
    ds_grid_set(playerInventory, 9, itemSelected, true)
}
