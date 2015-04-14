function customPlot(plot, handle, x, y, XTickLabel, YTickLabel)
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

command = [plot, '(x,y)'];
eval(command);
if ~isempty(XTickLabel)
set(handle, 'XTickLabel', XTickLabel);
end
if ~isempty(YTickLabel)
set(handle, 'YTickLabel', YTickLabel);
end
end

