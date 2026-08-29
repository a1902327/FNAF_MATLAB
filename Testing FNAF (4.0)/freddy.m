function [roomfreddy, cycle2, cycle1, freddy] = freddy ...
(AIlevelFreddy, rightdoor, camera, ...
freddy, cycle2, cycle1, room)

pause(3);

% Roll for Freddy move
[freddyMove, cycle2, cycle1] = movementchoice2(cycle2, cycle1);

% Determine Freddy's location
freddy = freddyMovement (AIlevelFreddy, rightdoor, camera, freddy, freddyMove);

% Store the room number into a variable
roomfreddy = freddyLocation(freddy);

% Display room name in Command Window
FreddyroomName = room(roomfreddy);
disp(FreddyroomName);
