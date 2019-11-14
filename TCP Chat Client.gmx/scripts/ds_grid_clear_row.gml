///ds_grid_clear_row(grid, row);

var _Grid = argument[0];
var _Row = argument[1];
var _Width = ds_grid_width(_Grid);
var _Height = ds_grid_height(_Grid);

for (var xx = 0; xx < _Width; xx ++)    {
    _Grid[# xx, _Row] = -1;
}
