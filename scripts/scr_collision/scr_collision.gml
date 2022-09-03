// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_collision__map(x_, y_) {
	y_ += 28 // compensamento das bordas do chão
	var posX = pixel_to_tilemap_x(x_, y_)
	var posY = pixel_to_tilemap_y(x_, y_)
		
	for (var tx = 0; tx < MAP_WIDTH; tx++)
		for (var ty = 0; ty < MAP_HEIGHT; ty++) {
			var tileData = global.map[# tx, ty]
			var tileIndex = tileData[TILE.SPRITE]

			if posX == tx and posY == ty and tileIndex != 0 {
				return false
			}
		}
	
	return true
}

function pixel_to_tilemap_x(x, y) {
		var _screenX = x - (SCREEN_WIDTH * .4)
		var _screenY = y - (SCREEN_HEIGHT * .25)
		
		return floor(( _screenX / (SPRITE_WIDTH * .5) + _screenY / (SPRITE_HEIGHT * .25)) * .5)
}

function pixel_to_tilemap_y(x, y) {	
		var _screenX = x - (SCREEN_WIDTH * .4)
		var _screenY = y - (SCREEN_HEIGHT * .25)
		
		return floor(( _screenY / (SPRITE_HEIGHT * .25) - _screenX / (SPRITE_WIDTH * .5)) * .5)
}