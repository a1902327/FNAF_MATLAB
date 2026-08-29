% Freddy: Show Stage(1) > Dining Hall(2) > Restrooms(11) > Kitchen(10) > East Hall(7) > East Hall Corner(8) > Office(13)
function [room] =  freddyLocation (freddyLocation)
% Stating Freddy's location based on the location index
if freddyLocation <= 4
    room = 1;
end

if freddyLocation == 5 
    room = 2;
end

if freddyLocation == 6
    room = 11;
end

if freddyLocation == 7 
    room = 10;
end

if freddyLocation == 8
    room = 7;
end

if freddyLocation == 9    
    room = 8;
end

if freddyLocation == 10
    room = 13;
end








          

    
