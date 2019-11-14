///NetworkExecuteDisconnectServer();

var _Buffer = NetworkReturnBuffer(PACKET_TARGET.CLIENT, PACKET_TYPE.SHUTDOWN);
NetworkSendBroadcastTCP(_Buffer);
buffer_delete(_Buffer);
