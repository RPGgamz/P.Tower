//Follow him man
var angle = degtorad(point_direction(x, y, obj_player.x, obj_player.y));
x_vel += cos(angle)*runspd;
y_vel += -sin(angle)*runspd;

//Back to idle
if (distance_to_point(obj_player.x, obj_player.y) > vision_range) {
    state = scr_enemystate_idle;
}

//Attacking
if (distance_to_point(obj_player.x, obj_player.y) <= attack_range) {
    state = scr_enemystate_attacking;
    xx = obj_player.x - x;
    yy = obj_player.y - y;
    sprite_index = spr_enemy_normal_attacking;
    image_speed = 4/60;
    image_index = 0;
}
