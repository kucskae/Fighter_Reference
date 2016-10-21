

if(image_speed > 0) {
    if (image_index > image_number - 1) {
        mystates = mystates.mymove;
    }
}
    
if((image_index == 4) || (image_index == 5)) {
    inst = instance_create(obj_player.x, obj_player.y, obj_tg_hitbox);
    with(inst) {
        //===Change orientation here
        inst_2 = instance_place(x, y, par_enemy) //===Returns ID of collided thing.
        with(inst_2) {
            hit = 1;
        }
    }
/*
    with (instance_create(obj_player.x, obj_player.y, obj_tg_hitbox)) {
        image_xscale =  obj_player.image_xscale;
        with (instance_place(x, y, par_enemy)) {
            if (hit == 0) {
                hit = 1;
                vsp = -3;
                hsp = sign(x - other.x) * 4;
            }
        }
    }
    */
}
