function [roomfreddy, cycle,freddy] = freddy (AIlevelFreddy, door, camera, freddy, cycle, room)
% Roll for Freddy move
pause(3);
[freddyMove, cycle] = movementchoice2(cycle);

% Determine Freddy's location
freddy = freddyMovement (AIlevelFreddy, door, camera, freddy, freddyMove);

% Store the room number into a variable
roomfreddy = freddyLocation(freddy);

% Display room name in Command Window
FreddyroomName = room(roomfreddy);
disp(FreddyroomName);
end