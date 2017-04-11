///scr_find_waypoints();

for (var i = 0; i <= instance_number(obj_waypoint); i++;) {
    waypoint[i] = instance_find(obj_waypoint,i)
}

for (var i = array_length_1d(waypoint) - 1; i > -1; i--;) {
    waypoint[i].boss = id
}
