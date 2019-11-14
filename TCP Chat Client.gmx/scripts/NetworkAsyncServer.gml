///NetworkAsyncServer();

var _Type = async_load[? "type"];

switch (_Type)  {
    case network_type_connect:
        NetworkExecuteServerConnect();
        break;

    case network_type_data:
        NetworkExecuteServerData();
        break;
}
