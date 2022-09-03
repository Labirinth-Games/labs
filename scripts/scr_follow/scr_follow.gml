// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_follow(){
	var _dir = distance_to_object(obj_player)
	
	var _found_player = mp_grid_path(global.mp_grid, path, x, y, obj_player.x, obj_player.y, choose(1, 0))
	
	if _found_player
		path_start(path, 1, path_action_stop, false)
	
}