///NetworkExecuteDisconnect();

var _Buffer = NetworkReturnBuffer(PACKET_TARGET.SERVER, PACKET_TYPE.DISCONNECT);
buffer_write(_Buffer, buffer_u32, g.networkClientID);
var _Result = NetworkSendClientDataTCP(_Buffer);
buffer_delete(_Buffer);