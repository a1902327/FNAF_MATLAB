% Roll a dice for the animatronics' movement opportunity
function [Bonniemove, Chicamove, cycle] = movementchoice1 (cycle)  
    

    Bonniemove = randi (20);
    Chicamove = randi (20);
    cycle = cycle + 1
    if cycle == 6
        cycle = 1;
end

