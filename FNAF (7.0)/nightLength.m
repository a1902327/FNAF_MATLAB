% 4 seconds for each movement cycle, a night is 9 min long -> 135 movement cycles
time = 1;
    t = timer ('TimerFcn','time = time + 1; disp(time);','StartDelay',4);
    start (t);
 while ru
