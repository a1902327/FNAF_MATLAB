% Roll a dice for the animatronics' movement opportunity
function [Bonniemove,Chicamove,Foxymove] = movementchoice1 ()  
    pause(1);
    Bonniemove = randi (20);
    Chicamove = randi (20);
    Foxymove = randi (20);
end

