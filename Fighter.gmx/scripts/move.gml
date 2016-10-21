script_execute(GetKeysPressed);

hsp = d_key - a_key;
if(hsp = 0) {
    sprite_index = spr_tg;
    image_speed = (1/8);
} else {
    sprite_index = spr_tg_move;
}

if(vsp < 10) {  //=== IF STATEMENT
    vsp += grav;
}
hsp *= spd;
//  vsp += spd * sign(vsp);

if(place_meeting(obj_player.x, obj_player.y + 1, obj_environment)){ 
    vsp = space_key * -jumpspeed;
}   //===Checking to see if 1 pixel below us is a wall, cool stuff.

script_execute(collision);

obj_player.x += hsp;
obj_player.y += vsp;

if(atk_key) { //===If attack key was pressed do this stuff.
    sprite_index = spr_tg_atk;
    mystates = mystates.myatk;
    image_speed = (1/2);
    script_execute(atk);
}
