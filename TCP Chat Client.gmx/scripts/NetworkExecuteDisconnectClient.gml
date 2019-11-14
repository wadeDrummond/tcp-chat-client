///NetworkExecuteDisconnectClient();

with (objClient)
    instance_destroy();
network_destroy(g.networkSocketTCP);
room_goto(roomMenu);
