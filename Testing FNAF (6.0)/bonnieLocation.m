% Bonnie: Show Stage (1) > Backstage (9) > Dining Hall (2) > Supply Closet (6) > West Hall (4) > West Hall Corner (5)
% This function take input from the BonnieMovement function to determine where Bonnie is
function [bonnieRoom] = bonnieLocation (bonnie)  
 % Stating the location of Bonnie accroding to the location index
    if bonnie == 1 || bonnie == 2
        bonnieRoom = 1;
    end
    
    if bonnie == 3 || bonnie == 4
        bonnieRoom = 9;
    end

    if bonnie == 5 || bonnie == 6
        bonnieRoom = 2;
    end

    if bonnie == 7 || bonnie == 8
        bonnieRoom = 6;
    end

    if bonnie == 9 || bonnie == 10 
        bonnieRoom = 4;
    end

    if bonnie == 11 || bonnie == 12
        bonnieRoom = 5;
    end

    if bonnie == 13 
        bonnieRoom = 12;
    end

    if bonnie == 14
        bonnieRoom = 13;
    end
end
    

       

       

       




       
    



   

