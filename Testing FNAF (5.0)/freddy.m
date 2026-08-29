function [roomfreddy, cycle2] = freddy (AIlevelFreddy, door, camerajustlower, cameraatFreddy, freddy)
% Roll for Freddy move
[freddyMove, cycle2] = movementchoice2(cycle2);

% Determine Freddy's location
freddy = freddyMovement (AIlevelFreddy,door,camerajustlower,cameraatFreddy,freddy);

% Store the room number into a variable
roomfreddy = freddyLocation(freddy);

% Display room name in Command Window
FreddyroomName = room(roomfreddy);
