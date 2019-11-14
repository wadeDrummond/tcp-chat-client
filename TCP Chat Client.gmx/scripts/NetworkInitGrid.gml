///NetworkInitGrid();

networkClosed = false;
networkGridWidth = 2;
networkGridHeight = 1;
networkGridLast = -1;
timeGrid = 10;
timeGridMax = 10;

networkGrid = ds_grid_create(networkGridWidth, networkGridHeight);
for (var xx = 0; xx < networkGridWidth; xx ++)    {
    for (var yy = 0; yy < networkGridHeight; yy ++)   {
        networkGrid[# 0, yy] = -1;       //Client ID
        networkGrid[# 1, yy] = "ERR";    //Client Name
    }
}
