% This function gather required information from the user to start game
function [AIlevelBonnie, AIlevelChica, AIlevelFreddy, jumpscare] = startgame ()
% Clear the Command Window
clear;
clc; 

fprintf ("Welcome to Five Nights at Freddy's (MATLAB version)\n");

% Prompt user to enter name
user = input ("To start, please enter your name: ","s");

% Introduction to the game
fprintf ("Welcome %s, in this game you will be the night security guard in the Freddy Fredbear Pizzeria\n",user);
fprintf ("You have to keep the animatronics which are looking for intruder including you from getting inside your office\n");

% Difficulty introduction
fprintf ("Now please choose difficulty\n");
fprintf ("The difficulty is determine by the animatronics' AI level\n");
fprintf ("AI level 1-3: Easy\n");
fprintf ("AI level 4-8: Medium\n");
fprintf ("AI level 8-12: Hard\n");
fprintf ("AI level 13-20: Extreme\n");

% Warning before playing
fprintf ("The game contains some unpleasant images, please consider before playing. Thank you!\n");

% Choose difficulties
AIlevelBonnie = input("Choose Bonnie AI level: ");
AIlevelChica = input("Choose Chica AI level: ");
AIlevelFreddy = input("Choose Freddy AI level: ");

% Choose effect
jumpscare = input("Do you wish to have jumpscare? This can be too unpleasant for some people, " + ...
    "please consider carefully if you have any health issue (Enter 'yes' or 'no'):","s");