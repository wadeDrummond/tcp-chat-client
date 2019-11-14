///ChatInitClient();

keyboard_string = "";
chatName = g.settingName;
chatColour = g.settingColour;

chatBlinkTimer = 0;
chatBlinkTimerMax = 15;
chatBlinkToggle = 0;
chatBlinkArray[0] = "";
chatBlinkArray[1] = "_";

chatGrid = ds_grid_create(2, 2);

drawDir = 0;
