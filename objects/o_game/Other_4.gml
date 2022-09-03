#macro TS       64 // size sprite wall to map

var _w = ceil(room_width / TS)
var _h = ceil(room_height / TS)

global.mp_grid = mp_grid_create(0, 0, _w, _h, TS, TS) // create the grid

mp_grid_add_instances(global.mp_grid, obj_wall, false) // added instance on grid