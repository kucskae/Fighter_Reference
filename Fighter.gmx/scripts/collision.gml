//===Horizontal collision
if(place_meeting(obj_player.x+hsp, obj_player.y, obj_environment)) { 
    while(!place_meeting(obj_player.x+sign(hsp), obj_player.y, obj_environment)){
        obj_player.x  += sign(hsp);
    }
    hsp = 0;
}

//===Vertical collision
//===Cool stuff I guess, for some reason sign is like absolute value, it will give 0, 1, or -1
if(place_meeting(obj_player.x, obj_player.y+vsp, obj_environment)) { 
    while(!place_meeting(obj_player.x, obj_player.y+sign(vsp), obj_environment)){
        obj_player.y  += sign(vsp);
    }
    vsp = 0;
}
