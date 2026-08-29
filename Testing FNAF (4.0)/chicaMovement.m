% Show Stage > Dining Hall > Restrooms > Kitchen > East Hall > East Hall Corner

function [chicaLocation] =chicaMovement (chicaLocation, initialMove, ...
    AIlevel, move, door)

 % Chica jumpscare if it's able to get in the office
    if chicaLocation == 13 && door == false && move <= AIlevel
        chicaLocation = 14;
        pause (5);
        disp ("Jumpscare!")
        return;
    end

 % Chica will return to Dinning Hall if get blocked by the door
    if chicaLocation == 13 && door == true && move <= AIlevel
        chicaLocation = 2;
    end

 % Chica can move to door way after 3 move
    if initialMove > 3
        if move <= AIlevel
            chicaLocation = chicaLocation + 1;
        end
    end 
    
    % Movement restrict from Show stage to Restroom for the first 3 move
    if initialMove <= 3
        % If the rolled dice is smaller or equal to AI level, Chica moves
        if move <= AIlevel         
            chicaLocation = randi(6);
            % Make sure the Chica don't return to Show Stage after moving
            while chicaLocation == 1 || chicaLocation == 2
                chicaLocation = randi (6);
            end
        end
    end
    
   