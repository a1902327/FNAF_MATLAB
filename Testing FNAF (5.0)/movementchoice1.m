% Roll a dice for the animatronics' movement opportunity
function [Bonniemove,Chicamove,Foxymove,cycle] = movementchoice1 (cycle)  
    switch cycle
        case 1
            pause(1);
        case 2
            pause(2);
        case 3
            pause(2);
        case 4 
            pause(1);
        case 5 
            pause(3);
    end

    Bonniemove = randi (20);
    Chicamove = randi (20);
    Foxymove = randi (20);
    cycle = cycle + 1;
    if cycle == 6
        cycle = 1;
end

