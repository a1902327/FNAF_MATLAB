% Bonnie: Show Stage > Backstage > Dining Hall  > Supply Closet > West Hall > West Hall Corner
function [bonnie] = bonnieMovement (bonnie,initialMove,AIlevel,move,door) 
   
  % Bonnie jumpscare if it's able to get in the office
    if bonnie == 13 && door == false && move <= AIlevel
        bonnie = 14;
        pause(10);
        disp("Jumpscare");
        return;
    end
    
     % Bonnie returns to Backstage if get blocked by the door
    if bonnie == 13 && door == true && move <= AIlevel
        bonnie = 3;
    end

  % Bonnie can move to door way after 3 move
    if initialMove > 3 && bonnie <= 14
        if move <= AIlevel
            bonnie = bonnie + 1;
        end
    end 

    % Movement restrict from Show stage to Supply Closet for the first 3 move
    if initialMove <= 3 && bonnie < 14
        % If the rolled dice is smaller or equal to AI level, Bonnie moves
        if move <= AIlevel         
            bonnie = randi(6);
            % Make sure the Bonnie don't return to Show Stage after moving
            while bonnie == 1 || bonnie == 2
                bonnie = randi (6);
            end
        end
    end