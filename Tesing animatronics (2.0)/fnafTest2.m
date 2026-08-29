clear; clc;
% Create an array of room names for easier access 
room = ["Show stage";"Dinning Area";"Pirate Cove";"West Hall";"West Hall Corner";
    "Supply Closet";"East Hall";"East Hall Corner";"Backstage";"Kitchen";"Restroom";"Doorway";"Office"];
disp(room(5));
initialMove = 4;
AIlevel = 3;
bonnie = 1;
for i = 1:6
    [bonnie,initialMove] = bonnieMovement(bonnie,initialMove,AIlevel);
    roombonnie = bonnieLocation(bonnie);
    roomName = room(roombonnie)
end









