///PreferencesSave();

ini_open(FILE_PREF);
ini_write_string("PREFERENCES", "NAME", g.settingName);
ini_write_real("PREFERENCES", "COLOUR", g.settingColour);
ini_write_string("CLIENT", "DEFAULT_IP", g.settingIP);
ini_write_real("CLIENT", "DEFAULT_PORT", g.settingPort);
ini_write_real("SERVER", "MAX_PLAYERS", g.settingMaxPlayers);
ini_close();
