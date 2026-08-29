function [roombonnie, roomchica, bonnie, chica, initialMove, cycle] = bonniechica (bonnie, ...
    initialMove, AIlevelBonnie, rightdoor, leftdoor, chica, AIlevelChica, ...
    cycle, room)
% Bonnie and Chica initial movement index
initialMove = initialMove + 1;

pause(1);
% Roll for movement
[bonnieMove , chicaMove, cycle] = movementchoice1(cycle);

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
end