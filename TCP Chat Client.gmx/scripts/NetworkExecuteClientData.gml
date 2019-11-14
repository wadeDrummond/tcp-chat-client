///NetworkExecuteClientData();

var _Buffer = async_load[? "buffer"];
var _packetTarget = buffer_read(_Buffer, buffer_u8);
var _packetType = buffer_read(_Buffer, buffer_u8);

//Show Notifications For All Incoming Packets? (A LOT!)
if debugEnabled and debugPrintIncoming {
    print("Client Received Packet", g.networkDebugPacketTypeNames[_packetType]);
}

//Only Continue if Client is the intended target
if _packetTarget != PACKET_TARGET.CLIENT   {
    exit;
}

//Do Stuff with the Information provided in the Packet
switch (_packetType) {
    case PACKET_TYPE.CHAT:
        NetworkExecuteChatReceive(_Buffer);
        break;
    case PACKET_TYPE.SHUTDOWN:
        NetworkExecuteDisconnectClient();
        break;
}
