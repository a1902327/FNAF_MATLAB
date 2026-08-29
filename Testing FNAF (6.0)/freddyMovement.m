% Freddy: Show Stage(1) > Dining Hall(2) > Restrooms(11) > Kitchen(10) > East Hall(7) > East Hall Corner(8) > Office(13)

function [freddy] =  freddyMovement (AIlevel, door, camera, freddy, move)

% Freddy movement when the dice is rolled sucessfully
if move <= AIlevel
    if camera == false && freddy <= 8
            freddy = freddy + 1;

    elseif camera == true 
        freddy = freddy + 0;

    % Camera is on, Freddy don't move
    elseif freddy == 9 && camera == true
        freddy = freddy + 0;
    % Camera is off, door is open, Freddy attacks
    elseif freddy == 9 && camera == false && door == false
        freddy = freddy + 1;
    % Door is opened, camera is on, Freddy does not attack
    elseif freddy == 9 && camera == true && door == false
        freddy = freddy + 0;
    end
end







          

    
