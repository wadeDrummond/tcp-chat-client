///NetworkExecuteHostServer();

g.networkPort = NETWORK_PORTDEFAULT;
g.networkServerTCP = network_create_server(network_socket_tcp, g.networkPort, g.settingMaxPlayers);

if (g.networkServerTCP < 0) {
    print("Failed to host a TCP server", g.networkPort, g.networkServerTCP);
    event_user(0);
}
else    {
    print("Successfully created a Server", g.networkPort, g.networkServerTCP);
    instance_create(0, 0, objClient);
    ChatAddMessage("SERVER", "Hosting Server Now!", c_yellow);
    room_goto(roomLobby)
}
