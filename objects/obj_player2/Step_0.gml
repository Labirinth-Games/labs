var moveX = keyboard_check(ord("D")) - keyboard_check(ord("A"))
var moveY = keyboard_check(ord("S")) - keyboard_check(ord("W"))

if moveX != 0
	image_xscale = moveX


	
if !scr_collision__map(x + moveX * spd, y + moveY * spd) {
	x += moveX * spd
	y += moveY * spd 

	collision = true
} else 
	collision = false
