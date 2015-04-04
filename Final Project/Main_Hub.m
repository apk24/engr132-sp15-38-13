function varargout = Main_Hub(varargin)
% MAIN_HUB MATLAB code for Main_Hub.fig
%      MAIN_HUB, by itself, creates a new MAIN_HUB or raises the existing
%      singleton*.
%
%      H = MAIN_HUB returns the handle to a new MAIN_HUB or the handle to
%      the existing singleton*.
%
%      MAIN_HUB('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MAIN_HUB.M with the given input arguments.
%
%      MAIN_HUB('Property','Value',...) creates a new MAIN_HUB or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Main_Hub_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Main_Hub_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Main_Hub

% Last Modified by GUIDE v2.5 04-Apr-2015 16:57:12

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Main_Hub_OpeningFcn, ...
                   'gui_OutputFcn',  @Main_Hub_OutputFcn, ...
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


% --- Executes just before Main_Hub is made visible.
function Main_Hub_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Main_Hub (see VARARGIN)

% Choose default command line output for Main_Hub
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Main_Hub wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Main_Hub_OutputFcn(hObject, eventdata, handles) 
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


% --- Executes on button press in RashidGUI_pb.
function RashidGUI_pb_Callback(hObject, eventdata, handles)
% hObject    handle to RashidGUI_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in YashGUI_pb.
function YashGUI_pb_Callback(hObject, eventdata, handles)
% hObject    handle to YashGUI_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in BrodyGUI_pb.
function BrodyGUI_pb_Callback(hObject, eventdata, handles)
% hObject    handle to BrodyGUI_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in ApoorvaGUI_pb.
function ApoorvaGUI_pb_Callback(hObject, eventdata, handles)
% hObject    handle to ApoorvaGUI_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in citations_pb.
function citations_pb_Callback(hObject, eventdata, handles)
% hObject    handle to citations_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
