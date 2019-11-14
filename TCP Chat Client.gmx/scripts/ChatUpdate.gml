///ChatUpdate();

chatBlinkTimer = max(chatBlinkTimer - 1, 0);
if chatBlinkTimer <= 0  {
    chatBlinkTimer = chatBlinkTimerMax;
    chatBlinkToggle = !chatBlinkToggle;
    chatBlinkString = chatBlinkArray[chatBlinkToggle];
}

if keyboard_check_pressed(vk_enter) {
    ChatSendMessage(chatName, keyboard_string, chatColour);
    keyboard_string = "";
}
