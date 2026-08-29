% Foxy: Pirate Cove > West Hall
% Foxy don't move between room but making its moving by peeking out from Pirate Cove

function [] = FoxyPeak ()
% Staing Foxy location based on its location index
if foxyStage <= 3
    stage = "Inside the curtain";
end

if foxyStage <= 7 && foxyStage > 3
    stage = "Head peaking out of the curtain";
end

if foxyStage <= 11 && foxyStage > 7
    stage = "Leaning out the curtain";
end

if foxyStage == 12
    stage = "The curtain is empty. Foxy is running to the office";
end

% Show the stage of Foxy
disp (stage);

% roll a dice to determine whether Foxy will move or not
    move = movementchoice;

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


