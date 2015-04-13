function varargout = Print_Help(varargin)
% PRINT_HELP MATLAB code for Print_Help.fig
%      PRINT_HELP, by itself, creates a new PRINT_HELP or raises the existing
%      singleton*.
%
%      H = PRINT_HELP returns the handle to a new PRINT_HELP or the handle to
%      the existing singleton*.
%
%      PRINT_HELP('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PRINT_HELP.M with the given input arguments.
%
%      PRINT_HELP('Property','Value',...) creates a new PRINT_HELP or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Print_Help_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Print_Help_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Print_Help

% Last Modified by GUIDE v2.5 13-Apr-2015 11:06:05

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Print_Help_OpeningFcn, ...
                   'gui_OutputFcn',  @Print_Help_OutputFcn, ...
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


% --- Executes just before Print_Help is made visible.
function Print_Help_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Print_Help (see VARARGIN)

% Choose default command line output for Print_Help
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Print_Help wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Print_Help_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in Exit_pb.
function Exit_pb_Callback(hObject, eventdata, handles)
% hObject    handle to Exit_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close
