/// @description 
var tileData, screenX, screenY, tileIndex, tileZ

for (var tx = 0; tx < MAP_WIDTH; tx++)
	for (var ty = 0; ty < MAP_HEIGHT; ty++) {
		tileData = global.map[# tx, ty]
		screenX = scr_isometric_position__x(tx, ty)
		screenY = scr_isometric_position__y(tx, ty)
		
		tileIndex = tileData[TILE.SPRITE]
		tileZ = tileData[TILE.Z]
		
		if (tileIndex != 0) {
			if DEBUG
				draw_rectangle(screenX - 32, screenY - 32, screenX + 32, screenY + tileZ + 32, true)
				
			draw_sprite(spr_floor, 1, screenX, screenY + tileZ)	
		}
	}