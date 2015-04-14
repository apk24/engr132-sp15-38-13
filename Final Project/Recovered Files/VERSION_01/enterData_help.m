function varargout = enterData_help(varargin)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%  ENGR 13200 Spring 2015
%  Programmer(s) and Purdue Email Address(es):
%  1. Broderick Schwartz, schwarb@purdue.edu
%
%  Other Contributor(s) and Purdue Email Address(es):
%  1. Name login@purdue.edu
%
%  Section #:  38    Team #:13
%  Assignment: nanoHUB Simulation Suite
%
%  Academic Integrity Statement:
%       I/We have not used source code obtained from
%       any other unauthorized source, either modified
%       or unmodified.  Neither have I/we provided access
%       to my/our code to another. The project I/we am/are 
%       submitting is my/our own original work.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%No citations were included in this GUI as the programmer is solely
%responsible for it's content and generation.
% ENTERDATA_HELP MATLAB code for enterData_help.fig
%      ENTERDATA_HELP, by itself, creates a new ENTERDATA_HELP or raises the existing
%      singleton*.
%
%      H = ENTERDATA_HELP returns the handle to a new ENTERDATA_HELP or the handle to
%      the existing singleton*.
%
%      ENTERDATA_HELP('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ENTERDATA_HELP.M with the given input arguments.
%
%      ENTERDATA_HELP('Property','Value',...) creates a new ENTERDATA_HELP or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before enterData_help_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to enterData_help_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help enterData_help

% Last Modified by GUIDE v2.5 13-Apr-2015 21:14:20

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @enterData_help_OpeningFcn, ...
                   'gui_OutputFcn',  @enterData_help_OutputFcn, ...
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


% --- Executes just before enterData_help is made visible.
function enterData_help_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to enterData_help (see VARARGIN)

% Choose default command line output for enterData_help
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes enterData_help wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = enterData_help_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in close_pb.
function close_pb_Callback(hObject, eventdata, handles)
% hObject    handle to close_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close enterData_help;
