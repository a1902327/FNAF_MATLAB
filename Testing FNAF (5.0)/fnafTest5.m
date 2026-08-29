function [roomfreddy,roombonnie,roomchica, freddyLocation, ...
    bonnieLocation, chicaLocation, cycle1, cycle2, ...
    initialMove] = fnafTest5 ...
    ...
    (leftdoor, rightdoor, ...
    freddyLocation, bonnieLocation, chicaLocation, ...
    camerajustlower, cameraatfreddy, ...
    cycle1, cycle2, ...
    initialMove, ...
    AIlevelFreddy, AIlevelBonnie, AIlevelChica)

% Create an array of room names for easier access 
room = ["Show stage";"Dinning Area";"Pirate Cove";"West Hall";"West Hall Corner";
    "Supply Closet";"East Hall";"East Hall Corner";"Backstage";"Kitchen";"Restroom";"Doorway";"Office"];

% Create an array of Foxy's stage in Pirate Cove
PirateCove = ["Inside the curtain" ; "Head peaking out of the curtain" ; "Leaning out the curtain" ;
              "The curtain is empty. Foxy is running to the office"];

% Run function for Freddy
[roomfreddy, cycle2, cycle1, freddyLocation] = freddy (AIlevelFreddy, rightdoor, ...
    camerajustlower, cameraatfreddy, freddyLocation, cycle2, cycle1, room);

% Run function for Chica and Bonnie
[roombonnie, roomchica, cycle1, bonnieLocation, chicaLocation, initialMove] = bonniechica (bonnieLocation, ...
    initialMove, AIlevelBonnie, rightdoor, leftdoor, chicaLocation, ...
    AIlevelChica, cycle1, room);

end













