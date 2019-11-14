///ChatSendMessage(name, message, colour);

var _chatName = argument[0];
var _chatMessage = argument[1];
var _chatColour = argument[2];

//dont say n word
_chatMessage = string_replace(_chatMessage, "nigger", "man of colour");
_chatMessage = string_replace(_chatMessage, "nigga", "man o' colour");

var _bufferIndex = NetworkReturnBuffer(PACKET_TARGET.SERVER, PACKET_TYPE.CHAT);
buffer_write(_bufferIndex, buffer_string, _chatName);
buffer_write(_bufferIndex, buffer_string, _chatMessage);
buffer_write(_bufferIndex, buffer_u32, _chatColour);

var _Result = NetworkSendClientDataTCP(_bufferIndex);
if _Result < 0  {
    print("Failed to send outgoing chat", _Result);
}   else    {
    print("Successfully sent outgoing chat", _Result);
}
