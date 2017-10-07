//scr_trash_arrow(Int);
var which = argument0;

//Case 1 - there is only one item
if(ds_grid_height(playerInventory) == 1){
    if(ds_grid_get(playerInventory, 1, 0) > 1){
        ds_grid_set(playerInventory, 1, 0, (ds_grid_get(playerInventory, 1, 0) - 1));
    } else {
        for(i = 0; i < playerInventoryWidth; i++){
            ds_grid_set(playerInventory, i, 0, 0);
        }
    }
}
//Case 2 - Everything else
else {
    if(ds_grid_get(playerInventory, 1, which) > 1){
        ds_grid_set(playerInventory, 1, which, ds_grid_get(playerInventory, 1, which) - 1);
    } else {
        var currentRow = which + 1;
        var rowToRemove = which;
        for(i = rowToRemove; i < ds_grid_height(playerInventory) - 1; i++){
            ds_grid_set_grid_region(playerInventory, playerInventory, 0, currentRow, 5, currentRow, 0, i);
            currentRow += 1;
        }
        ds_grid_resize(playerInventory, 5, ds_grid_height(playerInventory) - 1);
        if(scrolledAmount > 0){
            --scrolledAmount;
        }
        if(which > 0){
            --which;
        }
    }
}
