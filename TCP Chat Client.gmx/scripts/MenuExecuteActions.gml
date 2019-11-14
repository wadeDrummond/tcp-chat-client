///MenuExecuteActions();

switch (menuIndex)  {
    case MENU_TYPES.MAIN: //Main Menu
        switch (menuSelected)   {
            case 0: //Connect
                menuIndex = MENU_TYPES.CONNECT;
                menuSelected = 0;
                exit;
            case 1: //Host
                menuIndex = MENU_TYPES.HOST;
                menuSelected = 0;
                exit;
            case 2: //Options
                menuIndex = MENU_TYPES.OPTIONS;
                menuSelected = 0;
                exit;
            case 3: //Quit
                game_end();
                exit;
            }
        exit;
        
    case MENU_TYPES.CONNECT: //Connect
        switch (menuSelected)   {
            case 0: //Browser
                room_goto(roomMatchmaking);
                exit;
            case 1: //Direct Connect
                menuIndex = 2;
                menuSelected = 0;
                exit;
            case 2: //Back
                menuIndex = 0;
                menuSelected = 0;
                exit;
        }
        
    case MENU_TYPES.DIRECT_CONNECT: //Direct Connect
        switch (menuSelected)   {
            case 0: //IP
                menuArray[MENU_TYPES.DIRECT_CONNECT, 0] = "IP:";
                MenuExecuteTyping();
                exit;
            case 1: //Port
                menuArray[MENU_TYPES.DIRECT_CONNECT, 1] = "PORT:";
                MenuExecuteTyping();
                exit;
            case 2: //Connect
                instance_create(0, 0, objClient);
                exit;
            case 3: //Back
                menuIndex = MENU_TYPES.CONNECT;
                menuSelected = 1;
                exit;
        }
        
    case MENU_TYPES.HOST: //Host
        switch (menuSelected)   {
            case 0: //Start
                instance_create(0, 0, objServer);
                exit;
            case 1: //Back
                menuIndex = MENU_TYPES.MAIN;
                menuSelected = 1;
                exit;
        }
        
    case MENU_TYPES.OPTIONS: //Options
        switch (menuSelected)   {
            case 0: //Name
                menuArray[MENU_TYPES.OPTIONS, 0] = "NAME:";
                MenuExecuteTyping();
                exit;
            case 1: //Back
                menuIndex = MENU_TYPES.MAIN;
                menuSelected = 2;
                exit;
        }
}
