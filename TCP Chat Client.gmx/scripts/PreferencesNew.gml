///PreferencesNew();

g.settingName = choose(environment_get_variable("USERNAME"), "McLovin");
g.settingIP = "127.0.0.1";
g.settingPort = 6510;
g.settingMaxPlayers = 64;
g.settingColour = make_colour_hsv(irandom(255), 255, 255);

PreferencesSave();
