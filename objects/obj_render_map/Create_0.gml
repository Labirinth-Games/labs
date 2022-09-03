/// @description 
layer_set_visible("Map", false)

global.map = ds_grid_create(SPRITE_WIDTH, SPRITE_HEIGHT)

tileMapId = layer_tilemap_get_id("Map")

for (var tx = 0; tx < MAP_WIDTH; tx++)
	for (var ty = 0; ty < MAP_HEIGHT; ty++) {
		// get position item drawed on map
		var tileMapData = tilemap_get(tileMapId, tx, ty)
		
		// Format: [sprite, z]
		var thisTile = [-1, 0]
		thisTile[TILE.SPRITE] = tileMapData // get index sprite
		thisTile[TILE.Z] = 0 // position z (pixel to up or down)
		
		global.map[# tx, ty] = thisTile // save info on map
	}