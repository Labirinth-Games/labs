var move_x = keyboard_check(ord("D")) - keyboard_check(ord("A"))
var move_y = keyboard_check(ord("S")) - keyboard_check(ord("W"))

var speed_ = keyboard_check(vk_shift) ? velocity * 3 : velocity 

x += speed_ * move_x
y += speed_ * move_y
