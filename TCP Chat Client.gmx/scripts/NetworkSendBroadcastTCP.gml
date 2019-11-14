///NetworkSendBroadcastTCP(buffer);
//Broadcasts a buffer to all connected clients over established TCP sockets

var _Buffer = argument[0];

with (objServer)    {
    for (var i = 0; i < NetworkReturnPlayerCount(); i ++)    {
        NetworkSendPacketTCP(_Buffer, i);
    }
}
