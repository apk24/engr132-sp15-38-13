function varargout = Print_Plot_shah213(varargin)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%  ENGR 13200 Spring 2015
%  Programmer(s) and Purdue Email Address(es):
%  1. Yash Shah, shah213@purdue.edu
%
%  Other Contributor(s) and Purdue Email Address(es):
%  1. Name login@purdue.edu
%
%  Section #: 38   Team #:13
%  Assignment: nanoHUB Simulation Suite
%
%  Academic Integrity Statement:
%       I/We have not used source code obtained from
%       any other unauthorized source, either modified
%       or unmodified.  Neither have I/we provided access
%       to my/our code to another. The project I/we am/are 
%       submitting is my/our own original work.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%In text citations are not found in this GUI because the only citations
%needed are for prior art and pictures can't have in 'text' citations.
%Citations are found in the citations GUI window.
% PRINT_PLOT_SHAH213 MATLAB code for Print_Plot_shah213.fig
%      PRINT_PLOT_SHAH213, by itself, creates a new PRINT_PLOT_SHAH213 or raises the existing
%      singleton*.
%
%      H = PRINT_PLOT_SHAH213 returns the handle to a new PRINT_PLOT_SHAH213 or the handle to
%      the existing singleton*.
%
%      PRINT_PLOT_SHAH213('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PRINT_PLOT_SHAH213.M with the given input arguments.
%
%      PRINT_PLOT_SHAH213('Property','Value',...) creates a new PRINT_PLOT_SHAH213 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Print_Plot_shah213_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Print_Plot_shah213_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Print_Plot_shah213

% Last Modified by GUIDE v2.5 27-Apr-2015 11:32:42

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Print_Plot_shah213_OpeningFcn, ...
                   'gui_OutputFcn',  @Print_Plot_shah213_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Print_Plot_shah213 is made visible.
function Print_Plot_shah213_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Print_Plot_shah213 (see VARARGIN)

% Choose default command line output for Print_Plot_shah213
handles.output = hObject;

cost = getappdata(0, 'Yash_Plot1');
tox = getappdata(0, 'Yash_Plot2');
 
%axes(handles.Print_Attr_ax);
scatter(handles.Print_Plot_ax, cost, tox, 'filled', 'cyan');
 
title('Toxicity vs. Cost'); %Title for the plot
ylabel('Toxicity (units/g)'); %Label for y-axis
xlabel('Cost ($/g)'); %Label for x-axis
 
saveas(handles.Print_Plot_ax,'Attribute Plot', 'png');
 
close Print_Plot_shah213;

% Update handles structure
%guidata(hObject, handles);

% UIWAIT makes Print_Plot_shah213 wait for user response (see UIRESUME)
% uiwait(handles.background);


% --- Outputs from this function are returned to the command line.
function varargout = Print_Plot_shah213_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
%varargout{1} = handles.output;