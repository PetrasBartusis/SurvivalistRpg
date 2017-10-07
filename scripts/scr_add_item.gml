/// scr_add_item(DSGrid, String, Int, String, Sprite, Script, Sprite, Int, Boolean, Int, Boolean);
/// @description Add an item to a grid
/// @argument0 DSGrid grid_to_add
/// @argument1 String item_name
/// @argument2 Int item_amount
/// @argument3 String item_description
/// @argument4 Sprite item_sprite
/// @argument5 Script item_script
/// @argument6 Sprite ingame
/// @argument7 Int bonusDamage
/// @argument8 Boolean isEquippable
/// @argument9 Int GlowSize

gridToAddTo = argument0;
newItemName = argument1;
newItemAmount = argument2;
newItemDescription = argument3;
newItemSprite = argument4;
newItemScript = argument5;
newItemSpriteInGame = argument6;
newItemBonusDamage = argument7;
newItemIsEquippable = argument8;
newItemGlowSize = argument9;
newItemIsEquipped = argument10;

//Case 1 - Item is already in the inventory
for(i = 0; i < ds_grid_height(gridToAddTo); i++){
    if(ds_grid_get(gridToAddTo, 0, i) == newItemName){
        ds_grid_set(gridToAddTo, 1, i, ds_grid_get(gridToAddTo, 1, i) + newItemAmount);
        return true;
    }
}
//Case 2 - It's not in the inventory
if(ds_grid_get(gridToAddTo, 0, 0) != 0){
    ds_grid_resize(gridToAddTo, playerInventoryWidth, ds_grid_height(gridToAddTo) + 1);
}

newItemSpot = ds_grid_height(gridToAddTo) - 1;
ds_grid_set(gridToAddTo, 0, newItemSpot, newItemName);
ds_grid_set(gridToAddTo, 1, newItemSpot, newItemAmount);
ds_grid_set(gridToAddTo, 2, newItemSpot, newItemDescription);
ds_grid_set(gridToAddTo, 3, newItemSpot, newItemSprite);
ds_grid_set(gridToAddTo, 4, newItemSpot, newItemScript);
ds_grid_set(gridToAddTo, 5, newItemSpot, newItemSpriteInGame);
ds_grid_set(gridToAddTo, 6, newItemSpot, newItemBonusDamage);
ds_grid_set(gridToAddTo, 7, newItemSpot, newItemIsEquippable);
ds_grid_set(gridToAddTo, 8, newItemSpot, newItemGlowSize);
ds_grid_set(gridToAddTo, 9, newItemSpot, newItemIsEquipped);

return true;
