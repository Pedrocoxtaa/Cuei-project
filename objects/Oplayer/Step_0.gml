movx = keyboard_check(ord("D")) - keyboard_check(ord("A"))
velx = movx * vel



if movx != 0 {
	image_xscale = movx
}
if velx == 0 {
	sprite_index  = Splayer2
} else {
	sprite_index  = Splayer1
}
	
	
if place_meeting(x+velx, y, Ocolisor1) {
	while !place_meeting(x+sign(velx), y, Ocolisor1) {
		x += sign(velx)
	}
	sprite_index  = Splayer2
	velx = 0
}
x += velx


if place_meeting(x, y+vely, Ocolisor1) {
	while !place_meeting(x, y+sign(vely), Ocolisor1) {
		y += sign(vely)
	}
	vely = 0
}
y += vely

if place_meeting(x, y+1, Ocolisor1) {
	pulos = 1
} else {
	vely += gvd 
}

if keyboard_check_pressed(vk_space) and pulos > 0 {
	vely = pf
	pulos -= 1
}
