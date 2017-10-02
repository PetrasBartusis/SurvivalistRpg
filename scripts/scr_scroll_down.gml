///scr_scroll_down();
itemSelected = clamp(++itemSelected, 0, ds_grid_height(myItems) - 1);

if(itemSelected >= inventoryEndAt){
    ++scrolledAmount;
    ++inventoryOnScreen;
}

if(scrolledAmount + inventoryOnScreen > ds_grid_height(myItems)){
    --scrolledAmount;
}
