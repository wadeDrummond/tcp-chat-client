///NetworkReturnBuffer(target, packet_type);

var _Buffer = buffer_create(1, buffer_grow, 1);
buffer_seek(_Buffer, buffer_seek_start, 0);
buffer_write(_Buffer, buffer_u8, argument[0]);
buffer_write(_Buffer, buffer_u8, argument[1]);

return _Buffer;
