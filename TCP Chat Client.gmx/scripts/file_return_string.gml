///file_return_string(file);

var _fileIndex = argument[0];
var _fileInstance = file_text_open_read(_fileIndex);

var _returnString = "";
while !file_text_eof(_fileInstance) {
    _returnString += file_text_readln(_fileInstance);
}
file_text_close(_fileInstance);

return _returnString;
