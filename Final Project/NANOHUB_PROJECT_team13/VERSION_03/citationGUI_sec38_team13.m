function varargout = citationGUI_sec38_team13(varargin)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%  ENGR 13200 Spring 2015
%  Programmer(s) and Purdue Email Address(es):
%  1. Broderick Schwartz, schwarb@purdue.edu
%
%  Other Contributor(s) and Purdue Email Address(es):
%  1. Name login@purdue.edu
%
%  Section #:   38   Team #: 13
%  Assignment: nanoHUB Simulation Suite
%
%  Academic Integrity Statement:
%       I/We have not used source code obtained from
%       any other unauthorized source, either modified
%       or unmodified.  Neither have I/we provided access
%       to my/our code to another. The project I/we am/are 
%       submitting is my/our own original work.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%This is the citations GUI...it has all the citations.
% CITATIONGUI_SEC38_TEAM13 MATLAB code for citationGUI_sec38_team13.fig
%      CITATIONGUI_SEC38_TEAM13, by itself, creates a new CITATIONGUI_SEC38_TEAM13 or raises the existing
%      singleton*.
%
%      H = CITATIONGUI_SEC38_TEAM13 returns the handle to a new CITATIONGUI_SEC38_TEAM13 or the handle to
%      the existing singleton*.
%
%      CITATIONGUI_SEC38_TEAM13('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CITATIONGUI_SEC38_TEAM13.M with the given input arguments.
%
%      CITATIONGUI_SEC38_TEAM13('Property','Value',...) creates a new CITATIONGUI_SEC38_TEAM13 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before citationGUI_sec38_team13_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to citationGUI_sec38_team13_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help citationGUI_sec38_team13

% Last Modified by GUIDE v2.5 07-Apr-2015 08:51:17

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @citationGUI_sec38_team13_OpeningFcn, ...
                   'gui_OutputFcn',  @citationGUI_sec38_team13_OutputFcn, ...
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


% --- Executes just before citationGUI_sec38_team13 is made visible.
function citationGUI_sec38_team13_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to citationGUI_sec38_team13 (see VARARGIN)

% Choose default command line output for citationGUI_sec38_team13
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
imshow('citationsImg.png','Parent',handles.citations_ax);

% UIWAIT makes citationGUI_sec38_team13 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = citationGUI_sec38_team13_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in exit_pb.
function exit_pb_Callback(hObject, eventdata, handles)
% hObject    handle to exit_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close all

% --- Executes on button press in home_pb.
function home_pb_Callback(hObject, eventdata, handles)
% hObject    handle to home_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
nanohubGUI_sec38_team13
close citationGUI_sec38_team13
