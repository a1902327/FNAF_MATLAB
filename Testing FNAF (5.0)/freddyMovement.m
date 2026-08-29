% Freddy: Show Stage(1) > Dining Hall(2) > Restrooms(11) > Kitchen(10) > East Hall(7) > East Hall Corner(8) > Office(13)

function [freddy] =  freddyMovement (AIlevel,door,camerajustlower,cameraatFreddy,freddy)
% Indicator whether the camera have just been turn on and looking at Freddy or not
camerajustlower = false;

% Indicator whether the camera is looking at Freddy or not
cameraatFreddy = true;

% Movement lock cooldown after lowering the camera
cooldown = 15 - 0.4 * AIlevel;

% Freddy movement when the dice is rolled sucessfully
if move <= AIlevel
    if cameraatFreddy == false && freddy >= 4 &&freddy <= 8
        % Freddy will have a cooldown after being lock by the camera
        if camerajustlower == true
            % Cooldown starts
            pause(cooldown);
            freddy = freddy + 1;
        else
        % If camera hasn't been raise and look at Freddy for a while, there's no cooldown
            freddy = freddy + 1;
        end
    end
end

% Freddy don't move if the camera is looking at him
if cameraatFreddy == true 
    freddy = freddy + 0;
end

% Freddy's behaviour at East Hall Corner
% Camera is on and looking at Freddy, it doesn't attack
if freddy == 9 && camerajustlower == false && cameraatFreddy == true
    freddy = freddy + 0;
end

% Camera is off but the door is closed, it doesn't attack
if freddy == 9 && camerajustlower == true && door == true
    freddy = freddy + 0;
end

% Camera is off but door is opened, it attacks
if freddy == 9 && camerajustlower == true && door == false
    freddy = freddy + 1;
end

% Door is opened, camera is on but not looking at Freddy, it attacks
if freddy == 9 && camerajustlower == false && door == false && cameraatFreddy == false
    freddy = freddy + 1;
end
end






          

    
