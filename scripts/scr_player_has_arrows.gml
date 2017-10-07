///scr_player_has_arrows()
for(i = 0; i < ds_grid_height(playerInventory); i++){
    var name = ds_grid_get(playerInventory, 0, i)
    if(name == "Arrow")
    {
        scr_trash_arrow(i);
        return true;
    }
}
return false;
