// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_isometric_position__x(_x, _y){
	return ((_x - _y) * (SPRITE_WIDTH * .5)) + SCREEN_WIDTH * .4
}

function scr_isometric_position__y(_x, _y){
	return ((_x + _y) * (SPRITE_HEIGHT * .25)) + SCREEN_HEIGHT * .25
}