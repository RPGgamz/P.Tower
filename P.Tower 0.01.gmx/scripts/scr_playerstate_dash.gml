x_vel += cos(degtorad(angle))*runspd;
y_vel += -sin(degtorad(angle))*runspd;

var dash = instance_create(x, y, obj_dash_effect);
dash.sprite_index = sprite_index;
dash.image_index = image_index;
