///NetworkReturnBufferRedirect(buffer, target);

var _Buffer = argument[0];
var _Target = argument[1];

buffer_seek(_Buffer, buffer_seek_start, 0);
buffer_write(_Buffer, buffer_u8, _Target);
buffer_seek(_Buffer, buffer_seek_start, 0);
return _Buffer;
