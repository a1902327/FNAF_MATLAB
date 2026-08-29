diceroll = 0;
cycle = 1; 
switch cycle
    case 1
        t1 = timer ('TimerFcn','freddyMove = movementchoice;','StartDelay',3);
        start(t1);
        t2 = timer ('TimerFcn','bonnieMove = movementchoice; foxyMove = movementchoice; chicaMove = movementchoice; diceroll = 1;','StartDelay',1);
        start(t2);
        while diceroll == 1
            freddyMove
            bonnieMove
            foxyMove
            chicaMove
        end
    case 2 
        t1 = timer ('TimerFcn','freddyMove = movementchoice;','StartDelay',2);
        start(t1);
        t2 = timer ('TimerFcn','bonnieMove = movementchoice; foxyMove = movementchoice; chicaMove = movementchoice;','StartDelay',2);
        start(t2);
        cycle = cycle + 1
    case 3
        t1 = timer ('TimerFcn','freddyMove = movementchoice;','StartDelay',1);
        start(t1);
        t2 = timer ('TimerFcn',['bonnieMove = movementchoice;' ...
            ' foxyMove = movementchoice; chicaMove = movementchoice;' ...
            'freddyMove = movementchoice;'],'StartDelay',3);
        start(t2);        
        cycle = 1
end

disp ("Delay test");

