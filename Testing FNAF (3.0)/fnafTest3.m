clear; clc;
% Create an array of room names for easier access 
room = ["Show stage";"Dinning Area";"Pirate Cove";"West Hall";"West Hall Corner";
    "Supply Closet";"East Hall";"East Hall Corner";"Backstage";"Kitchen";"Restroom";"Doorway";"Office"];

% Create an array of Foxy's stage in Pirate Cove
PirateCove = ["Inside the curtain" ; "Head peaking out of the curtain" ; "Leaning out the curtain" ;
              "The curtain is empty. Foxy is running to the office"];

[AIlevelBonnie, AIlevelChica, AIlevelFreddy, jumpscare] = startgame;

door = true;
camera = true;
cameraatfreddy = true;
camerajustlower = false;

%%
% Roll for Freddy move
freddyMove = movementchoice2;
freddy = freddyMovement (AIlevelFreddy,door,camerajustlower,cameraatFreddy,freddy);
roomfreddy = freddyLocation(freddy);
FreddyroomName = room(roomfreddy);

[bonnieMove , chicaMove , foxyMove] = movementchoice1;
% Determine bonnie movement and location
[bonnie,initialMove] = bonnieMovement(bonnie,initialMove,AIlevelBonnie,bonnieMove,door);
roombonnie = bonnieLocation(bonnie);
BonnieroomName = room(roombonnie);

% Determine Chica movement and location
[chica,intialMove] = chicaMovement (chica,initialMove,AIlevelChica,chicaMove);
roomchica = chicaLocation(chica);
ChicaroomName = room(roomchica);














