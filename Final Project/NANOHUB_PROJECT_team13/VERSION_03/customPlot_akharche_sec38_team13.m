function customPlot_akharche_sec38_team13(plot, handle, XTickLabel, YTickLabel, varargin)
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
axes(handle);
plot(handle, varargin{:});
if ~isempty(XTickLabel)
set(handle, 'XTickLabel', XTickLabel);
NumTicks = length(XTickLabel);
L = get(handle,'XLim');
set(handle,'XTick',linspace(L(1),L(2),NumTicks))
end
if ~isempty(YTickLabel)
set(handle, 'YTickLabel', YTickLabel);
NumTicks = length(YTickLabel);
L = get(handle,'YLim');
set(handle,'YTick',linspace(L(1),L(2),NumTicks))
handle.XColor = 'white';
end
end
