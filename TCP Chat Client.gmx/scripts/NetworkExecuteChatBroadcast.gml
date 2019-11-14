///NetworkExecuteChatBroadcast(buffer);

var _bufferIndex = argument[0];

var _bufferSend = NetworkReturnBufferRedirect(_bufferIndex, PACKET_TARGET.CLIENT);
NetworkSendBroadcastTCP(_bufferSend);
buffer_delete(_bufferSend);
