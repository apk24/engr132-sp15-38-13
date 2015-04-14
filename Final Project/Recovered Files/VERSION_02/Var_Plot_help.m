function varargout = Var_Plot_help(varargin)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%  ENGR 13200 Spring 2015
%  Programmer(s) and Purdue Email Address(es):
%  1. Broderick Schwartz, schwarb@purdue.edu
%
%  Other Contributor(s) and Purdue Email Address(es):
%  1. Name login@purdue.edu
%
%  Section #:38      Team #:13
%  Assignment: nanoHUB Simulation Suite
%
%  Academic Integrity Statement:
%       I/We have not used source code obtained from
%       any other unauthorized source, either modified
%       or unmodified.  Neither have I/we provided access
%       to my/our code to another. The project I/we am/are 
%       submitting is my/our own original work.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%No citations were used for this help GUI as the programmer was the sole
%source of infomation on their GUI.
% VAR_PLOT_HELP MATLAB code for Var_Plot_help.fig
%      VAR_PLOT_HELP, by itself, creates a new VAR_PLOT_HELP or raises the existing
%      singleton*.
%
%      H = VAR_PLOT_HELP returns the handle to a new VAR_PLOT_HELP or the handle to
%      the existing singleton*.
%
%      VAR_PLOT_HELP('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in VAR_PLOT_HELP.M with the given input arguments.
%
%      VAR_PLOT_HELP('Property','Value',...) creates a new VAR_PLOT_HELP or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Var_Plot_help_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Var_Plot_help_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Var_Plot_help

% Last Modified by GUIDE v2.5 12-Apr-2015 21:06:36

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Var_Plot_help_OpeningFcn, ...
                   'gui_OutputFcn',  @Var_Plot_help_OutputFcn, ...
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


% --- Executes just before Var_Plot_help is made visible.
function Var_Plot_help_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Var_Plot_help (see VARARGIN)

% Choose default command line output for Var_Plot_help
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Var_Plot_help wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Var_Plot_help_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close Var_Plot_help;
