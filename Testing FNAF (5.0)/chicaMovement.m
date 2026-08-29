% Show Stage > Dining Hall > Restrooms > Kitchen > East Hall > East Hall Corner

function [chicaLocation,initialMove] =chicaMovement (chicaLocation,initialMove,AIlevel)
    % Limit the move range of Chica based on this variable (moveindex)
    initialMove = initialMove + 1;

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
    
    % Chica can move to door way after 3 move
    if initialMove > 3
        if move <= AIlevel
            chicaLocation = chicaLocation + 1;
        end
    end 
    
    % Chica jumpscare when in the office 
    if chicaLocation == 13 && door == false 
        chicaLocation = 14;
        disp ("Jumpscare!")
        pause (5);
        disp("Game over");
        return;
    end

    