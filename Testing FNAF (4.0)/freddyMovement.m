% Freddy: Show Stage(1) > Dining Hall(2) > Restrooms(11) > Kitchen(10) > East Hall(7) > East Hall Corner(8) > Office(13)

function [freddy] =  freddyMovement (AIlevel, door, camera, freddy, move)

% Movement lock cooldown after lowering the camera
%cooldown = 15 - 0.4 * AIlevel;

% Freddy movement when the dice is rolled sucessfully
if move <= AIlevel
    if camera == false && freddy <= 8
            freddy = freddy + 1;
    end
end

% Freddy don't move if the camera is looking at him
if camera == true 
    freddy = freddy + 0;
end

% Freddy's behaviour at East Hall Corner
% Camera is on and looking at Freddy, it doesn't attack
if freddy == 9 && camera == true
    freddy = freddy + 0;
end

% Camera is off but the door is closed, it doesn't attack
if freddy == 9 && camera == true && door == true
    freddy = freddy + 0;
end

% Camera is off but door is opened, it attacks
if freddy == 9 && camera == true && door == false
    freddy = freddy + 1;
end

% Door is opened, camera is on but not looking at Freddy, it attacks
if freddy == 9 && camera == false && door == false
    freddy = freddy + 1;
end

end






          

    
