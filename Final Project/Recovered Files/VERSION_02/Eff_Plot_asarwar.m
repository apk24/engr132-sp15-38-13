function varargout = Eff_Plot_asarwar(varargin)
%%NOTE TO GRADER!!!! Rashid did not contribute to M7 in any way this was
%%his GUI we were unable to do anything for it as we were busy with our
%%own.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%  ENGR 13200 Spring 2015
%  Programmer(s) and Purdue Email Address(es):
%  1. Rashid Sarwar, asarwar@purdue.edu
%
%  Other Contributor(s) and Purdue Email Address(es):
%  1. Name login@purdue.edu
%
%  Section #: 38      Team #: 13
%  Assignment: nanoHUB Simulation Suite
%
%  Academic Integrity Statement:
%       I/We have not used source code obtained from
%       any other unauthorized source, either modified
%       or unmodified.  Neither have I/we provided access
%       to my/our code to another. The project I/we am/are 
%       submitting is my/our own original work.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% EFF_PLOT_ASARWAR MATLAB code for Eff_Plot_asarwar.fig
%      EFF_PLOT_ASARWAR, by itself, creates a new EFF_PLOT_ASARWAR or raises the existing
%      singleton*.
%
%      H = EFF_PLOT_ASARWAR returns the handle to a new EFF_PLOT_ASARWAR or the handle to
%      the existing singleton*.
%
%      EFF_PLOT_ASARWAR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EFF_PLOT_ASARWAR.M with the given input arguments.
%
%      EFF_PLOT_ASARWAR('Property','Value',...) creates a new EFF_PLOT_ASARWAR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Eff_Plot_asarwar_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Eff_Plot_asarwar_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Eff_Plot_asarwar

% Last Modified by GUIDE v2.5 06-Apr-2015 19:02:22

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Eff_Plot_asarwar_OpeningFcn, ...
                   'gui_OutputFcn',  @Eff_Plot_asarwar_OutputFcn, ...
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


% --- Executes just before Eff_Plot_asarwar is made visible.
function Eff_Plot_asarwar_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Eff_Plot_asarwar (see VARARGIN)

% Choose default command line output for Eff_Plot_asarwar
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Eff_Plot_asarwar wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Eff_Plot_asarwar_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in enterNew_pb.
function enterNew_pb_Callback(hObject, eventdata, handles)
% hObject    handle to enterNew_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
enterData

% --- Executes on button press in clearPlots_pb.
function clearPlots_pb_Callback(hObject, eventdata, handles)
% hObject    handle to clearPlots_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in cost_pb.
function cost_pb_Callback(hObject, eventdata, handles)
% hObject    handle to cost_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in tox_pb.
function tox_pb_Callback(hObject, eventdata, handles)
% hObject    handle to tox_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in costTox_pb.
function costTox_pb_Callback(hObject, eventdata, handles)
% hObject    handle to costTox_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


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
close Eff_Plot_asarwar
