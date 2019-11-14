///ChatAddMessage(name, message, colour);

var _inputMessage = argument[0] + ": " + argument[1];
var _inputColour = argument[2];

with (objClient)    {
    var _Height = ds_grid_height(chatGrid);
    chatGrid[# 0, _Height - 1] = _inputMessage;
    chatGrid[# 1, _Height - 1] = _inputColour;
    ds_grid_resize(chatGrid, 2, _Height + 1);
}

sound(sndChat, rr(0.95, 1));
