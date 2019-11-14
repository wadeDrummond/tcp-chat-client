///MenuExecuteIterateGamemodes(delta_h);

var _inputDeltaH = argument[0];
var _gamemodeMax = array_length_1d(Gamemodes) - 1;

g.settingGamemode += _inputDeltaH;
if (g.settingGamemode < 0)
    g.settingGamemode = (_gamemodeMax);
else if (g.settingGamemode > _gamemodeMax)
    g.settingGamemode = 0;
    
menuArray[MENU_TYPES.HOST, 0] = "GAMEMODE: " + Gamemodes[g.settingGamemode];
