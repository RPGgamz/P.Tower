///scr_move_axis(xaxis, yaxis, threshold, spd)
var xaxis = argument[0];
var yaxis = argument[1];
var threshold = argument[2];
var spd = argument[3];

magnitude = point_distance(0, 0, xaxis, yaxis);

//Run
if (gamepad_button_check(0, gp_face3)) && (alarm[1] == -1) {
    spd = runspd;
    stamina--;
    alarm[0] = 90; //how long before stamina regen
} else {
    spd = normalspd;
}

//Stamina regen
if (stamina == 0) { //if you use all your stamina it becomes unavailable for x steps
    alarm[1] = 20;
}
if (alarm[0] == -1) {
    if (stamina < stamina_max) {
        stamina += 2;
        if (stamina > stamina_max) {
            alarm[0] = -2;
            stamina = stamina_max;
        }
    } else {
        alarm[0] = -2;
        stamina = stamina_max;
    }
}

//Move if you can
if (magnitude >= threshold) {
    if !(place_meeting(x+xaxis*spd, y+yaxis*spd, obj_solid)) {
        x += xaxis*spd;
        y += yaxis*spd;
    } else if !(place_meeting(x+xaxis*spd, y, obj_solid)) {
        x += xaxis*spd;
    } else if !(place_meeting(x, y+yaxis*spd, obj_solid)) {
        y += yaxis*spd;
    }
}

