///PreferencesLoad();

ini_open(FILE_PREF);
g.settingName = ini_read_string("PREFERENCES", "NAME", environment_get_variable("USERNAME"));
g.settingColour = ini_read_real("PREFERENCES", "COLOUR", make_colour_hsv(irandom(255), 255, 255));
g.settingIP = ini_read_string("CLIENT", "DEFAULT_IP", "127.0.0.1");
g.settingPort = ini_read_real("CLIENT", "DEFAULT_PORT", 6510);
g.settingMaxPlayers = ini_read_real("SERVER", "MAX_PLAYERS", 64);
ini_close();
