///MenuExecuteTypingFinish();

switch (menuIndex)  {
    case MENU_TYPES.DIRECT_CONNECT: //Direct Connect
        switch (menuSelected)   {
            case 0: //IP
                g.settingIP = keyboard_string;
                menuArray[MENU_TYPES.DIRECT_CONNECT, 0] = "IP: " + string(g.settingIP);
                break;
            case 1: //Port
                g.settingPort = real(keyboard_string);
                menuArray[MENU_TYPES.DIRECT_CONNECT, 1] = "PORT: " + string(g.settingPort);
                break;
        }
        break;
    case MENU_TYPES.OPTIONS: //Options
        switch (menuSelected)   {
            case 0: //Name
                g.settingName = keyboard_string;
                menuArray[MENU_TYPES.OPTIONS, 0] = "NAME: " + string(g.settingName);
                break;
        }
        break;
}

PreferencesSave();
keyboard_string = "";
stateCurrent = MENU_STATES.NORMAL;
