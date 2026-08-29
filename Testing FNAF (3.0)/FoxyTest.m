% Foxy: Pirate Cove > West Hall
% Foxy don't move between room but making its moving by peeking out from Pirate Cove

function [foxyStage] = FoxyTest (foxyStage,move)
% Checking for movement opportunity failiure
while moveLock == false
    
    

if cameratoFoxy == false 
    moveLock = false;
end

if cameratoFoxy == true
    moveLock = true;
end


if moveLock == false
    if move <= AIlevel 
        foxyStage = foxyStage + 1;
    end
end

% Foxy will jumpscare if the door is open, the camera is on when it's running toward the office
if foxyStage == 12 && door == false && camera == true
    foxyStage = 13;
    disp ("Jumpscare!");
    pause (3);
    disp("Game over");
end

% If Foxy is running toward the office but you don't check the camera, it
% will take 25 seconds for him to jumpscare you


% All Foxy movement opportunity will failed if the camera is up
% When the camera is off, the movement failiure will countine ranaging
% randomly from 8.5 to 16.7 seconds


