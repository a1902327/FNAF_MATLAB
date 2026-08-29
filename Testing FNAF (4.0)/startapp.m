fnaf = 'fnafv5.mlapp';

try 
    matlab.apputil.run(fnaf);
catch exception
    fprintf("Unable to start app!\n");
end
