% Bonnie: Show Stage > Backstage > Dining Hall  > Supply Closet > West Hall > West Hall Corner
bonnieLocation = 1;
moveindex = 1;
AIlevel = 10;
for i = 1:20
    [bonnieLocation, moveindex] = bonnieAni (bonnieLocation, moveindex,AIlevel); 
    pause;
end
function [bonnie, initialMove] = bonnieAni (bonnie,initialMove,AIlevel)  
 % Stating the location of Bonnie accroding to the location index
    if bonnie == 1 || bonnie == 2
        room = "Show stage";
    end
    
    if bonnie == 3 || bonnie == 4
        room = "Backstage";
    end

    if bonnie == 5 || bonnie == 6
        room = "Dinning Hall";
    end

    if bonnie == 7 || bonnie == 8
        room = "Supply Closet";
    end

    if bonnie == 9 || bonnie == 10 
        room = "West Hall";
    end

    if bonnie == 11 || bonnie == 12
        room = "West Hall Corner";
    end

    if bonnie == 13 
        room = "Door way";
    end

    if bonnie == 14
        room = "Office";
    end
    % Show where Bonnie is
    disp(room);
    % roll a dice to determine whether bonnie will move or not
    move = movementchoice

    % Limit the move range of Bonnie based on this variable (moveindex)
    initialMove = initialMove + 1;

    % Consider the door is closed
    door = false;

    % Consider the camera is up
    cameraup = true;

    % Movement restrict from Show stage to Supply Closet for the first 3 move
    if initialMove <= 3
        % If the rolled dice is smaller or equal to AI level, Bonnie moves
        if move <= AIlevel         
            bonnie = randi(6);
            % Make sure the Bonnie don't return to Show Stage after moving
            while bonnie == 1 || bonnie == 2
                bonnie = randi (6);
            end
        end
    end
    
    % Bonnie can move to door way after 3 move
    if initialMove > 3
        if move <= AIlevel
            bonnie = bonnie + 1;
        end
    end 
    
    % Bonnie jumpscare when in the office 
    if bonnie == 13 && door == false 
        bonnie = 14;
        disp ("Jumpscare!")
        pause (5);
        disp("Game over");
        return;
    end

    % Bonnie won't get in the office if the door is closed            
    if bonnie == 13 && door ==  true 
        bonnie = 1;
    end      
end


       

       

       




       
    



   

