///scr_equip_item()
if(instance_exists(obj_player)){
    obj_player.weapon_sprite = ds_grid_get(playerInventory, 5, itemSelected);
    obj_player.bonus_weapon_damage = ds_grid_get(playerInventory, 6, itemSelected);
}
