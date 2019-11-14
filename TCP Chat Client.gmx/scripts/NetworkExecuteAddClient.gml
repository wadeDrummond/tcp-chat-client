///NetworkExecuteAddClient(socket_id);

var _socketID = argument[0];;

var _Height = ds_grid_height(networkGrid);
networkGrid[# 0, _Height - 1] = _socketID;
ds_grid_resize(networkGrid, 1, _Height + 1);

print("Added client", _socketID);
