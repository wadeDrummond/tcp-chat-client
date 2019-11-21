///DrawingExecuteFormat(surface);

var _surfaceIndex = argument[0];
var _bufferIndexNetwork = NetworkReturnBuffer(PACKET_TARGET.SERVER, PACKET_TYPE.DRAWING);
buffer_write(_bufferIndexNetwork, buffer_u32, surfaceWidth);
buffer_write(_bufferIndexNetwork, buffer_u32, surfaceHeight);
var _bufferIndex = buffer_getpixel_begin(_surfaceIndex);
for (var xx = 0; xx < surfaceWidth; xx ++)  {
    for (var yy = 0; yy < surfaceHeight; yy ++) {
        buffer_write(_bufferIndexNetwork, buffer_u32, buffer_getpixel(_bufferIndex, xx, yy, surfaceWidth, surfaceHeight));
    }
}

buffer_delete(_bufferIndex);
return _bufferIndexNetwork;

/*
var _surfaceIndex = argument[0];
var _surfaceWidth = surface_get_width(_surfaceIndex);
var _surfaceHeight = surface_get_height(_surfaceIndex);
var _gridIndex = ds_grid_create(_surfaceWidth, _surfaceHeight);

for (var xx = 0; xx < _surfaceWidth; xx ++) {
    for (var yy = 0; yy < _surfaceHeight; yy ++)    {
        _gridIndex[# xx, yy] = surface_getpixel(_surfaceIndex, xx, yy);
    }
}

var _Return = ds_grid_write(_gridIndex);
ds_grid_destroy(_gridIndex);
return _Return;
