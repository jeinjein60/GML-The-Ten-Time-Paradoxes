var right_key = keyboard_check(ord("D"));
var left_key = keyboard_check(ord("A"));
var up_key = keyboard_check(ord("W"));
var down_key = keyboard_check(ord("S"));

xspeed = (right_key - left_key) * move_speed;
yspeed = (down_key - up_key) * move_speed;



//collistons
if place_meeting(x + xspeed, y, obj_z_bed) == true {
	xspeed = 0;
}

if place_meeting(x, y + yspeed, obj_z_bed) == true {
	yspeed = 0;
}
if place_meeting(x + xspeed, y, obj_wall) == true {
	xspeed = 0;
}

if place_meeting(x, y + yspeed, obj_wall) == true {
	yspeed = 0;
}

if place_meeting(x + xspeed, y, obj_bed_borders) == true {
	xspeed = 0;
}

if place_meeting(x, y + yspeed, obj_bed_borders) == true {
	yspeed = 0;
}

if place_meeting(x + xspeed, y, obj_desk) == true {
	xspeed = 0;
}

if place_meeting(x, y + yspeed, obj_desk) == true {
	yspeed = 0;
}

if place_meeting(x + xspeed, y, obj_dressor) == true {
	xspeed = 0;
}

if place_meeting(x, y + yspeed, obj_dressor) == true {
	yspeed = 0;
}

// move playe
x += xspeed;
y += yspeed;

//set facing places
if xspeed > 0 { face = RIGHT; }
else if xspeed < 0 { face = LEFT; }

//set sprite
if xspeed > 0 {face = RIGHT};
if xspeed < 0 {face = LEFT};
if yspeed > 0 {face = DOWN};
if yspeed < 0 {face = UP};

if xspeed != 0 || yspeed != 0 {
    sprite_index = sprite_walk[face];
} else {
    sprite_index = sprite_idle[face];
}




