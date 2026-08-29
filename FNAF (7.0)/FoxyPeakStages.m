% Foxy: Pirate Cove > West Hall
% Foxy don't move between room but making its moving by peeking out from Pirate Cove

function [] = FoxyTest ()
% Staing Foxy location based on its location index
if foxyStage <= 3
    stage = "Inside the curtain";
end

if foxyStage <= 7 && foxyStage > 3
    stage = "Head peaking out of the curtain";
end

if foxyStage <= 11 && foxyStage > 7
    stage = "Leaning out the curtain";
end

if foxyStage == 12
    stage = "The curtain is empty. Foxy is running to the office";
end




