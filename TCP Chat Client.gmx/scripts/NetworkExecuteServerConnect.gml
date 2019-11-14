///NetworkExecuteServerConnect();

var _networkSocket = async_load[? "socket"];
var _networkSucceeded = async_load[? "succeeded"];

if (_networkSucceeded) or is_undefined(_networkSucceeded)  {
    NetworkExecuteAddClient(_networkSocket);
}   else    {
    print("Failed to accept client", _networkSocket, _networkSucceeded);
}
