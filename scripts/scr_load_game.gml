/// scr_load_game
var file = file_text_open_read(working_directory + "my_save_game.txt");
var save_string = file_text_read_string(file);
file_text_close(file);
save_string = base64_decode(save_string);

var save_data = json_decode(save_string);

var save_room = save_data[? "room"];
if(room != save_room){
    room_goto(save_room);
}

with (obj_player_stats){
    player_xstart = save_data[? "x"];
    player_ystart = save_data[? "y"];
    if(instance_exists(obj_player)){
        obj_player.x = player_xstart;
        obj_player.y = player_ystart;
        obj_player.phy_position_x = player_xstart;
        obj_player.phy_position_y = player_ystart;
    } else {
        instance_create(player_xstart, player_ystart, obj_player);
    }
    hp = save_data[? "hp"];
    maxhp = save_data[? "maxhp"];
    stamina = save_data[? "stamina"];
    maxstamina = save_data[? "maxstamina"];
    expr = save_data[? "expr"];
    maxexpr = save_data[? "maxexpr"];
    level = save_data[? "level"];
    attack = save_data[? "attack"];
    Stats[STRENGTH] = save_data[? "strength"];
    Stats[AGILITY] = save_data[? "agility"];
    Stats[DEXTERITY] = save_data[? "dexterity"];
    Stats[VITALITY] = save_data[? "vitality"];
    status_points = save_data[? "status_points"];
    inventory = save_data[? "inventory"];
    playerInventory = ds_grid_read(0, inventory);
}
ds_map_destroy(save_data); 
wasLoaded = true;
