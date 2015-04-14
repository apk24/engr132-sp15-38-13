function [ mats ] = generateRandomMats( num )
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%  ENGR 13200 Spring 2015
%  Programmer(s) and Purdue Email Address(es):
%  1. Apoorva Kharche, akharche@purdue.edu
%
%  Other Contributor(s) and Purdue Email Address(es):
%  1. Name login@purdue.edu
%
%  Section #: 38     Team #: 13
%  Assignment: nanoHUB Simulation Suite
%
%  Academic Integrity Statement:
%       I/We have not used source code obtained from
%       any other unauthorized source, either modified
%       or unmodified.  Neither have I/we provided access
%       to my/our code to another. The project I/we am/are 
%       submitting is my/our own original work.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



symbols = ['a':'z' 'A':'Z' '0':'9'];
 MAX_ST_LENGTH = 50;
for ct = num:-1:1
    
 stLength = randi(MAX_ST_LENGTH);
 nums = randi(numel(symbols),[1 stLength]);
 st = symbols (nums);
    mats(ct) = struct(...
    'qdeg', 10*rand()+5, ...
    'beg', 10*rand()+5, ...
    'r', 9*rand()+1, ...
    'eps', rand(), ...
    'cost', rand()*100, ...
    'tox', rand()*6, ...
    'name', st ...
    );

end

