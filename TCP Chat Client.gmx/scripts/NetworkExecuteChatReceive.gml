///NetworkExecuteChatReceive(buffer);

var _bufferIndex = argument[0];
var _chatName = buffer_read(_bufferIndex, buffer_string);
var _chatMessage = buffer_read(_bufferIndex, buffer_string);
var _chatColour = buffer_read(_bufferIndex, buffer_u32);

ChatAddMessage(_chatName, _chatMessage, _chatColour);
