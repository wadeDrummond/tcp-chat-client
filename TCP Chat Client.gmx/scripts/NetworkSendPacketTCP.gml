///NetworkSendPacketTCP(buffer, index);
//Broadcasts a buffer to specific client over an established Socket

var _Buffer = argument[0];
var _Index = argument[1];
var _Socket = networkGrid[# 0, _Index];
var _Result = network_send_packet(_Socket, _Buffer, buffer_get_size(_Buffer));

if _Result < 0  {
    print("Failed to send packet over TCP", _Name, _Socket);
}

return _Result;
