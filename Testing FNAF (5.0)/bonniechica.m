function [roombonnie, roomchica, cycle1] = bonniechica (bonnie, initialMove, AIlevelBonnie, door, ...
    chica, AIlevelChica, cycle1)
% Roll for movement
[bonnieMove , chicaMove , foxyMove, cycle1] = movementchoice1(cycle1);
% Determine bonnie movement and location
[bonnie,initialMove] = bonnieMovement(bonnie,initialMove,AIlevelBonnie,bonnieMove,door);
roombonnie = bonnieLocation(bonnie);
BonnieroomName = room(roombonnie);

% Determine Chica movement and location
[chica,initialMove] = chicaMovement (chica,initialMove,AIlevelChica,chicaMove);
roomchica = chicaLocation(chica);
ChicaroomName = room(roomchica);