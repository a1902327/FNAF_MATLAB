% Show Stage(1) > Dining Hall(2) > Restrooms(11) > Kitchen(10) > East Hall(7) > East Hall Corner(8) > Doorway(12) > Office (13)

function [chicaRoom] =chicaLocation (chicaLocation)
% Stating the location of Chica accroding to the location index
if chicaLocation == 1 || chicaLocation == 2
    chicaRoom = 1;
end

if chicaLocation == 3 || chicaLocation == 4
    chicaRoom = 2;
end

if chicaLocation == 5 || chicaLocation == 6
    chicaRoom = 11;
end

if chicaLocation == 7 || chicaLocation == 8
    chicaRoom = 10;
end

if chicaLocation == 9 || chicaLocation == 10
    chicaRoom = 7;
end

if chicaLocation == 11 || chicaLocation == 12
    chicaRoom = 8;
end

if chicaLocation == 13 
    chicaRoom = 12;
end

if chicaLocation == 14
    chicaRoom = 13;
end


   
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