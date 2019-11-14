///NetworkSendClientDataTCP(buffer);

var _Buffer = argument[0];
return network_send_packet(g.networkSocketTCP, _Buffer, buffer_get_size(_Buffer));
