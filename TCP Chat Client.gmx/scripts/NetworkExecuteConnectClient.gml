///NetworkExecuteConnectClient();

g.networkServer = instance_exists(objServer);

if g.networkServer  {
    g.networkIP = "127.0.0.1";
    g.networkPort = g.settingPort;
}   else    {
    g.networkIP = g.settingIP;
    g.networkPort = g.settingPort;
}

g.networkSocketTCP = network_create_socket(network_socket_tcp);
var _networkResult = network_connect(g.networkSocketTCP, g.networkIP, g.networkPort);

if (g.networkSocketTCP < 0) or (_networkResult < 0)    {
    print("Failed to create TCP socket", g.networkSocketTCP);
    game_end();
    exit;
}   else    {
    room_goto(roomLobby);
    exit;
}
