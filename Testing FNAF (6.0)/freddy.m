function [roomfreddy, cycle2, freddy] = freddy (AIlevelFreddy, door, camera, freddy, cycle2, room)
% Roll for Freddy move
[freddyMove, cycle2] = movementchoice2(cycle2);

% Determine Freddy's location
freddy = freddyMovement (AIlevelFreddy, door, camera, freddy, freddyMove);

% Store the room number into a variable
roomfreddy = freddyLocation(freddy);

% Display room name in Command Window
FreddyroomName = room(roomfreddy);
disp(FreddyroomName);
