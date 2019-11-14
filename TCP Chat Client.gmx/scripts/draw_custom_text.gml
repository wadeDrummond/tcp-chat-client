///draw_custom_text(halign, valign, colour, shadow, x, y, string);

var _alignH = argument[0];
var _alignV = argument[1];
var _Colour = argument[2];
var _Shadow = argument[3];
var _posX = argument[4];
var _posY = argument[5];
var _String = argument[6];

draw_set_halign(_alignH);
draw_set_valign(_alignV);

if (_Shadow != 0)    {
    var _darkColour = merge_colour(_Colour, c_black, 0.5);
    draw_set_colour(_darkColour);
    draw_text(_posX + _Shadow, _posY + _Shadow, _String);
    draw_set_colour(_Colour);
    draw_text(_posX - _Shadow, _posY - _Shadow, _String);
}   else    {
    draw_set_colour(_Colour);
    draw_text(_posX, _posY, _String);
}
