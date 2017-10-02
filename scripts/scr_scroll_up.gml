///scr_scroll_up();
itemSelected = clamp(--itemSelected, 0, ds_grid_height(myItems) - 1);

if(itemSelected < scrolledAmount){
    --scrolledAmount;
}
