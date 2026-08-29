% Bonnie: Show Stage > Backstage > Dining Hall  > Supply Closet > West Hall > West Hall Corner

function [bonnie, initialMove] = bonnieAni (bonnie,initialMove,AIlevel,move)
    % Limit the move range of Bonnie based on this variable (moveindex)
    initialMove = initialMove + 1;

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


       

       

       




       
    



   

