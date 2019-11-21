///NetworkExecuteDrawingReceive(buffer);

var _bufferIndex = argument[0];
var _surfaceWidth = buffer_read(_bufferIndex, buffer_u32);
var _surfaceHeight = buffer_read(_bufferIndex, buffer_u32);

var _surfaceIndex = surface_create(_surfaceWidth, _surfaceHeight);
surface_set_target(_surfaceIndex);
draw_clear_alpha(c_white, 0);
for (var xx = 0; xx < _surfaceWidth; xx ++)  {
    for (var yy = 0; yy < _surfaceHeight; yy ++)    {
        draw_sprite_ext(sprPixel, 0, xx, yy, 1, 1, 0, buffer_read(_bufferIndex, buffer_u32), 1);
    }
}

with (objArtist)    {
    ds_list_add(artList, sprite_create_from_surface(_surfaceIndex, 0, 0, surfaceWidth, surfaceHeight, false, 0, 0, 0));
    surface_free(_surfaceIndex);
}
surface_reset_target();

/*
var _gridString = buffer_read(_bufferIndex, buffer_string);

with (objArtist)    {
    var _surfaceIndex = surface_create(surfaceWidth, surfaceHeight);
    var _gridIndex = ds_grid_create(1, 1);
    ds_grid_read(_gridIndex, _gridString);
    
    surface_set_target(_surfaceIndex);
    for (var xx = 0; xx < ds_grid_width(_gridIndex) - 1; xx ++) {
        for (var yy = 0; yy < ds_grid_height(_gridIndex) - 1; yy ++)    {
            var _colourIndex = _gridIndex[# xx, yy];
            draw_sprite_ext(sprPixel, 0, xx, yy, 1, 1, 0, _colourIndex, 1);
        }
    }
    
    surface_reset_target();
    ds_grid_destroy(_gridIndex);
    ds_list_add(artList, sprite_create_from_surface(_surfaceIndex, 0, 0, surfaceWidth, surfaceHeight, false, 0, 0, 0));
    surface_free(_surfaceIndex);
}
