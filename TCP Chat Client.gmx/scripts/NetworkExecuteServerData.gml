///NetworkExecuteServerData();

var _Buffer = async_load[? "buffer"];
buffer_seek(_Buffer, buffer_seek_start, 0);
var _packetTarget = buffer_read(_Buffer, buffer_u8);
var _packetSubtype = buffer_read(_Buffer, buffer_u8);

if _packetTarget != PACKET_TARGET.SERVER {
    exit;
}

switch (_packetSubtype) {
    case PACKET_TYPE.CHAT:
        NetworkExecuteChatBroadcast(_Buffer);
        break;
    case PACKET_TYPE.DISCONNECT:
        NetworkExecuteClientRemove(_Buffer);
        break;
    default:
        print("Server received an unrecognized packet", _packetSubtype);
        break;
}
