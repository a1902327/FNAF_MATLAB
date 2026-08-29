% Roll a dice for Freddy's movement
function [Freddymove,cycle] = movementchoice2(cycle)
if cycle == 6
    pause (3);
end

Freddymove = randi(20);
cycle = cycle + 1;

if cycle == 6 
    cycle = 1;
end
end

