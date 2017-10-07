///scr_equip_item()
if(instance_exists(obj_player)){
    for(i = 0; i < ds_grid_height(playerInventory); i++){
        if(obj_player.weapon_sprite == ds_grid_get(playerInventory, 5, i)){
            ds_grid_set(playerInventory, 9, i, false);
        }
    }
    obj_player.weapon_sprite = ds_grid_get(playerInventory, 5, itemSelected);
    obj_player.bonus_weapon_damage = ds_grid_get(playerInventory, 6, itemSelected);
    obj_player.weapon_glow_size = ds_grid_get(playerInventory, 8, itemSelected);
    ds_grid_set(playerInventory, 9, itemSelected, true);
}
