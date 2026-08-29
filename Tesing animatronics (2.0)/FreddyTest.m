% Freddy: Show Stage > Dining Hall > Restrooms > Kitchen > East Hall > East Hall Corner
AIlevel = 10;
door = true;
cameraoff = false;
Freddycamera = true;
freddyLoc = 1;
for i = 1:20
    pause;
    freddy (AIlevel,door,cameraoff,Freddycamera,freddyLoc);
end

function [] =  freddy (AIlevel,door,camerajustlower,cameraatFreddy,freddyLocation)
% Stating Freddy's location based on the location index
if freddyLocation <= 4
    room = "Show stage";
end

if freddyLocation == 5 
    room = "Dinning Hall";
end

if freddyLocation == 6
    room = "Restrooms";
end

if freddyLocation == 7 
    room = "Kitchen";
end

if freddyLocation == 8
    room = "East Hall";
end

if freddyLocation == 9    
    room = "East Hall Corner";
end

if freddyLocation == 10
    room = "Office";
    disp ("Jumpscare!");
end

% Display Freddy's location
disp (room);

% roll a dice to determine whether Chica will move or not
move = movementchoice

% Indicator whether the camera have just been turn on and looking at Freddy or not
camerajustlower = false;

% Indicator whether the camera is looking at Freddy or not
cameraatFreddy = true;

% Movement lock cooldown after lowering the camera
cooldown = 15 - 0.4 * AIlevel;

% Freddy movement when the dice is rolled sucessfully
if move <= AIlevel
    if cameraatFreddy == false && freddyLocation >= 4 &&freddyLocation <= 8
        % Freddy will have a cooldown after being lock by the camera
        if camerajustlower == true
            % Cooldown starts
            pause(cooldown);
            freddyLocation = freddyLocation + 1;
        else
        % If camera hasn't been raise and look at Freddy for a while, there's no cooldown
            freddyLocation = freddyLocation + 1;
        end
    end
end

% Freddy don't move if the camera is looking at him
if cameraatFreddy == true 
    freddyLocation = freddyLocation + 0;
end

% Freddy's behaviour at East Hall Corner
% Camera is on and looking at Freddy, it doesn't attack
if freddyLocation == 9 && camerajustlower == false && cameraatFreddy == true
    freddyLocation = freddyLocation + 0;
end

% Camera is off but the door is closed, it doesn't attack
if freddyLocation == 9 && camerajustlower == true && door == true
    freddyLocation = freddyLocation + 0;
end

% Camera is off but door is opened, it attacks
if freddyLocation == 9 && camerajustlower == true && door == false
    freddyLocation = freddyLocation + 1;
end

% Door is opened, camera is on but not looking at Freddy, it attacks
if freddyLocation == 9 && camerajustlower == false && door == false && cameraatFreddy == false
    freddyLocation = freddyLocation + 1;
end
end






          

    
