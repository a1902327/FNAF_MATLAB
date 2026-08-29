% Roll a dice for Freddy's movement
function [Freddymove, cycle2, cycle1] = movementchoice2(cycle2, cycle1)

Freddymove = randi(20);
cycle2 = cycle2 + 1;

% If Freddy's cycle reach 6 reset Freddy's as well as the other two
if cycle2 == 6 
    cycle2 = 1;
    cycle1 = 1;
end

end

