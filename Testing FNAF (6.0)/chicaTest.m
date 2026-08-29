% Show Stage > Dining Hall > Restrooms > Kitchen > East Hall > East Hall Corner

function [chicaLocation,initialMove] = chicaMovement (chicaLocation,initialMove,AIlevel)
% Stating the location of Chica accroding to the location index
if chicaLocation == 1 || chicaLocation == 2
    room = "Show stage";
end

if chicaLocation == 3 || chicaLocation == 4
    room = "Dinning Hall";
end

if chicaLocation == 5 || chicaLocation == 6
    room = "Restroom";
end

if chicaLocation == 7 || chicaLocation == 8
    room = "Kitchen";
end

if chicaLocation == 9 || chicaLocation == 10
    room = "East Hall";
end

if chicaLocation == 11 || chicaLocation == 12
    room = "East Hall Corner";
end

if chicaLocation == 13 
    room = "Doorway";
end

if chicaLocation == 14
    room =  "Office";
end

% Show where Chica is
    disp(room);
    % roll a dice to determine whether Chica will move or not
    move = movementchoice;

    % Limit the move range of Chica based on this variable (moveindex)
    initialMove = initialMove + 1;

    % Consider the door is closed
    door = false;

    % Consider the camera is up
    cameraup = true;

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

    % Chica won't get in the office if the door is closed            
    if chicaLocation == 13 && door ==  true 
        chicaLocation = 1;
    end      
end