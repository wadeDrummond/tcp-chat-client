///NetworkInit();

NetworkInitEnumaterators();

g.networkIP = "localhost";
g.networkPort = 6510;
g.networkClientID = random_id();

network_set_config(network_config_connect_timeout, 10000);
