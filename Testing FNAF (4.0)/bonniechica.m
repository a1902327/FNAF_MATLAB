function [roombonnie, roomchica, cycle1, bonnie, chica, initialMove] = bonniechica (bonnie, ...
    initialMove, AIlevelBonnie, rightdoor, leftdoor, chica, AIlevelChica, ...
    cycle1, room)
% Bonnie and Chica initial movement index
initialMove = initialMove + 1;

pause(1);
% Roll for movement
[bonnieMove , chicaMove , cycle1] = movementchoice1(cycle1);

% Determine bonnie movement and location
bonnie = bonnieMovement(bonnie,initialMove,AIlevelBonnie, bonnieMove,leftdoor);
roombonnie = bonnieLocation(bonnie);
% Display Bonnie's location in Command Line
BonnieroomName = room(roombonnie);
disp (BonnieroomName);

% Determine Chica movement and location
chica = chicaMovement (chica, initialMove, AIlevelChica, chicaMove, rightdoor);
roomchica = chicaLocation(chica);
% Determine Chica's locationin Command Line
ChicaroomName = room(roomchica);
disp(ChicaroomName);